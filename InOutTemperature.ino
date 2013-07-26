
/*
* ----------------------------------------------------------------------------
* "THE BEER-WARE LICENSE" (Revision 42):
* <phk@FreeBSD.ORG> wrote this file. As long as you retain this notice you
* can do whatever you want with this stuff. If we meet some day, and you think
* this stuff is worth it, you can buy me a beer in return Poul-Henning Kamp
* ----------------------------------------------------------------------------
*/
/*
* InOut Temperature
*  
* This sketch reads the temperature and humidity from DHT11`s sensor and connects to a website using 
* an Arduino Wiznet Ethernet shiel and display content in a LCD display. 
* 
* Circuit:
*  Ethernet shield attached to pins 10, 11, 12, 13
*  LCD Matrix 16x2 attachedto pins 2, 3, 4, 5, 6, 8
*  Sensor DHT11 attached to pin 9
*/


#include <SPI.h>
#include <Ethernet.h>
#include <LiquidCrystal.h>
#include <dht11.h>

dht11 DHT11;
#define DHT11PIN 9

long updateFrequency = 5 * 60000; // 60000 = 1 minute

int TempLocal       = 0;
int HumidityLocal   = 0;
float DewPointLocal = 0.0;

byte mac[]    = { 0xDE, 0xAD, 0xBE, 0xEF, 0xFE, 0xED };
char server[] = "hewertho.mn";    // name address
// Initialize the Ethernet client library
EthernetClient client;

// Initialize the LCD Matrix
LiquidCrystal lcd(8,6,5,4,3,2);

// Variables for content 
char city[16];
char temp[11];
char time[5];

boolean hasStats = false; // until this is true default text will be displed

void setup() {
  lcd.begin(16, 2);
  Ethernet.begin(mac);
  
  printDefaultText();
}

void loop() {
  showInternalTemperature();
  showExternalTemperature();
}

void showInternalTemperature() {
  printLocalName();
  
  int chk = DHT11.read(DHT11PIN);
  switch(chk) {
    case DHTLIB_OK:
      printHumidityLocal();
      printTemperatureLocal();
      printDewPointLocal();
      break;
      
   case DHTLIB_ERROR_CHECKSUM:
     printChecksumError();
     break;
     
   case DHTLIB_ERROR_TIMEOUT:
     printTimeoutError();
     break;
     
   default:
     printUnknownError();
     break;
   }
   
   delay(2222);
   
   scrollText();
}

void printLocalName() {
 lcd.clear();
 lcd.home();
 lcd.println("HewerThomNs Room"); 
}

void printHumidityLocal() {
   HumidityLocal = (int) DHT11.humidity;  
   
   lcd.setCursor(0, 2);
   lcd.print(HumidityLocal);
   lcd.print("%  "); 
 }
 
 void printTemperatureLocal() {
   TempLocal = (int) DHT11.temperature;
    
   lcd.setCursor(5,2);
   lcd.print(TempLocal);
   lcd.print("C ");  
 }
 
 void printDewPointLocal() {
  DewPointLocal = dewPoint(TempLocal, HumidityLocal);
  
  lcd.setCursor(10,2);
  lcd.print(DewPointLocal);
  lcd.print("C"); 
 }
 
 void printChecksumError() { 
    lcd.setCursor(0,2);
    lcd.println("#Checksum Error"); 
 }
 
 void printTimeoutError() {
    lcd.setCursor(0,2);
    lcd.println("#Timeout Error");
 }
 
 void printUnknownError() {
   lcd.setCursor(0, 2);
   lcd.println("#Unknown Error");
 }
 
 // dewPoint function NOAA
// reference: http://wahiduddin.net/calc/density_algorithms.htm 
double dewPoint(double celsius, double humidity)
{
        double RATIO = 373.15 / (273.15 + celsius);  // RATIO was originally named A0, possibly confusing in Arduino context
        double SUM = -7.90298 * (RATIO - 1);
        SUM += 5.02808 * log10(RATIO);
        SUM += -1.3816e-7 * (pow(10, (11.344 * (1 - 1/RATIO ))) - 1) ;
        SUM += 8.1328e-3 * (pow(10, (-3.49149 * (RATIO - 1))) - 1) ;
        SUM += log10(1013.246);
        double VP = pow(10, SUM - 3) * humidity;
        double T = log(VP/0.61078);   // temp var
        return (241.88 * T) / (17.558 - T);
}

void showExternalTemperature() {
  updateInformation();
  
  if(hasStats) {
    printTemperature();
  } else {
    printDefaultText();
  }
  
  delay(updateFrequency);
  
  scrollText();
}

/**
 *  Update the status
 */
void updateInformation() {
  lcd.println("Connecting...   ");
  
  if(client.connect(server, 80)) {
    lcd.println("Connected       ");
    sendRequest(client);
  } else {
    lcd.println("Connection failed");
    return;
  }
  
  extractData(client);
  client.stop();
}

/** 
* Send the request to server
*/
void sendRequest(EthernetClient client) {
  // Make a HTTP request:
  client.print("GET /api/duino/inout.php?T=");
  client.print(TempLocal);
  client.print("&H=");
  client.print(HumidityLocal);
  client.print("&D=");
  client.print(DewPointLocal);
  client.println(" HTTP/1.1");
  client.println("Host: hewertho.mn");
  client.println("User-Agent: hewerthomn-Arduino");
  client.println("Connection: close");
  client.println();
}

/**
 * Extract the data and set the variables
 */
 void extractData(EthernetClient client) {
   char currentValue[16];
   boolean dataFlag = false; // True if data has started
   boolean endFlag = false; // True if data is reached
   int j = 0;
   int i = 0;

    while(client.connected() && !endFlag) {
      char c = client.read();
      if(c == '<') {
        dataFlag = true;
        hasStats = true;
      }
      else if(dataFlag && c == '>') { // End of data
        setStatValue(j, currentValue);
        endFlag = true;
      }
      else if(dataFlag && c == '|') { // Next dataset
        setStatValue(j++, currentValue);
        char currentValue[7];
        i=0;
      }
      else if(dataFlag) { // Data
        currentValue[i++] = c;
      }
    }   
}
 
/**
* set a simple stat value depending on the position in the string returned
* @param integer position
* @param string value
*/
void setStatValue(int position, char value[]) {
    
  switch(position) {
    case 0:
      for(int i=0; i<16; i++) {
        city[i] = value[i];
      }
      break;
    case 1:
      for(int i=0; i<11; i++) {
        temp[i] = value[i];
      }
   break;
   case 2:
      for(int i=0; i<5; i++) {
        time[i] = value[i];
      }
    break;
  }
}
  
/*
* print the actual temperature
*/
void printTemperature() {
  printCity();
  printTemp();
  printTime();
}

/*
* print the city name
*/
void printCity() {
  lcd.clear();
  lcd.home();
  lcd.println(city);
}
/**
* print the temperature
*/
void printTemp() {
  lcd.setCursor(0,2);
  lcd.print(temp);
}

/*
* print the time
*/
void printTime() {
 lcd.setCursor(11,2);
 lcd.print(time); 
}

/**
* Print a default text
*/ 
void printDefaultText() {
  lcd.home();
  lcd.print("In/Out          ");
  lcd.setCursor(0,1);
  lcd.print("Temperature   v1");
  
  delay(2000);
  scrollText();
}

void scrollText() {
  for(int positionCounter = 0; positionCounter < 16; positionCounter++) {
    lcd.scrollDisplayLeft();
    delay(150);  
  }
  lcd.clear();
  lcd.home();
 }
