# Practical 07 — Study of FAX

## Write-Up
**Aim:** Study the facsimile machine.  
**Apparatus:** Optical scanner, photosensor, modem, printer.

## Theory
FAX (facsimile) electronically sends and reproduces a document at a distant location. The transmitting machine scans the page and converts its image to digital information, sends it over a telephone line, and the receiver reconstructs and prints it.

## Block Diagram
```mermaid
flowchart LR
A[Document] --> B[Optical Scanner / CCD] --> C[Image Buffer / Processor] --> D[Fax Modem] --> E[Telephone Network] --> F[Receiving Modem] --> G[Image Buffer / Processor] --> H[Printer] --> I[Copy]
```

## Main Blocks
- **Scanner:** Illuminates and scans the page; dark ink reflects less light.
- **CCD/photosensor:** Converts optical patterns to electrical/digital data.
- **Modem:** Converts digital data to line signals for transmission and demodulates received signals.
- **Microprocessor:** Coordinates data, communication, memory, and print operation.
- **ROM/RAM:** ROM stores program; RAM stores temporary data.
- **Control panel/display:** User settings and status.
- **Image buffer:** Stores image data during processing.
- **Printer:** Reproduces the received page.
- **Power supply:** Provides operating voltages.

## Working
**Transmit:** Scan document → sensor digitizes image → processor stores data in buffer → modem sends signal over telephone line.  
**Receive:** Modem demodulates → processor buffers data → print controller drives printer → paper copy is produced.

## Conclusion
FAX scans documents, transmits digital image data over a telephone connection, and prints the reconstructed document at the receiving end.
