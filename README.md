# Progetto Misure Sulle Reti

## Formalizzazione del problema

**Obiettivo**
 Realizzare un sistema di emergenza wireless per ambienti outdoor, costituito da:

- **Nodi remoti**, basati su **STM32L072** (tramite *STM32 LoRa and Sigfox Discovery Kit*), connessi:
  - al modulo **GNSS Teseo-LIV3F** (*X-NUCLEO-GNSS1A1*) per l’acquisizione della posizione;
  - al modulo **LoRa** integrato per la trasmissione dei dati.
     Ogni nodo è in grado di:
  - Determinare la propria posizione geografica.
  - Inviare una richiesta di soccorso via LoRa al nodo centrale, includendo le coordinate GPS.
- Un **nodo centrale (beacon)**, anch’esso basato su STM32 e dotato di ricevitore LoRa, che:
  - Riceve le richieste dai nodi remoti.
  - Elabora e presenta le informazioni ricevute, anche tramite connessione seriale o interfaccia dedicata.

**Vincoli e requisiti**:

- **Basso consumo energetico**, grazie all’uso di LoRa e delle modalità a basso consumo dello STM32L072.
- **Indipendenza da rete internet**: il sistema deve operare anche in assenza di copertura.
- **Precisione nella localizzazione** tramite il modulo GNSS Teseo-LIV3F.
- **Interfaccia utente semplificata**: ogni nodo deve avere un pulsante per attivare la richiesta di soccorso.

------

### **Passaggi per la realizzazione**

#### 1. Scelta dell'hardware

- **STM32L072 Discovery Kit** (LoRa integrato).
- **X-NUCLEO-GNSS1A1** (basato sul modulo Teseo-LIV3F).
- **Pulsante fisico** per l’invio della richiesta.
- **Alimentazione a batteria** (es. Li-Po) con eventuale gestione della ricarica.
- **LED o altro feedback visivo** per indicare l’invio della richiesta.

#### 2. Progetto del firmware (per ogni nodo)

- Inizializzazione dei componenti:
  - GNSS tramite I2C/UART.
  - LoRa (tramite SPI).
  - GPIO per il pulsante.
- Ciclo operativo:
  - In attesa dell’input utente (pulsante premuto).
  - Acquisizione delle coordinate GPS.
  - Composizione del pacchetto dati (ID nodo + timestamp + latitudine + longitudine).
  - Trasmissione tramite LoRa.
- Gestione del risparmio energetico: modalità sleep quando il nodo è inattivo.

#### 3. Progetto del beacon centrale

- STM32 con ricevitore LoRa configurato per ricevere i pacchetti.
- Decodifica dei messaggi ricevuti.
- Visualizzazione delle emergenze su terminale seriale o display.
- (Opzionale) invio dei dati a un server remoto tramite USB o altra interfaccia.

#### 4. Stack di comunicazione

- **LoRa peer-to-peer**, per semplicità e controllo diretto della comunicazione.
  - Nessuna necessità di gateway LoRaWAN o server esterni.
  - Libera definizione del formato pacchetto.

#### 5. Test e validazione

- Verifica dell’integrazione GNSS + LoRa.
- Test di copertura in campo aperto.
- Validazione dell’affidabilità nella trasmissione e del tempo di acquisizione GPS.
- Misurazioni dei consumi e test della durata della batteria





## Risorse

- STM32 vscode extension: [link](https://marketplace.visualstudio.com/items?itemName=stmicroelectronics.stm32-vscode-extension)
