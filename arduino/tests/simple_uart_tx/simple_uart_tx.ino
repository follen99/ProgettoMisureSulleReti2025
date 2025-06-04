// simple_uart_tx.ino
// Invia una stringa via UART (Serial) per essere letta da una scheda STM32

void setup() {
    Serial.begin(115200); // Imposta il baud rate a 9600 (deve corrispondere a quello della STM32)
    delay(1000);        // Attendi che la seriale sia pronta
}

void loop() {
    const char* message = "Ciao STM32!\n";
    Serial.print(message); // Invia la stringa via UART
    delay(1000);           // Attendi 1 secondo prima di inviare di nuovo
}