# Chat Application Using Verilog HDL

## 📌 Project Overview

The **Chat Application** is a simple digital communication system designed using **Verilog HDL**.

The system allows two users to exchange short messages. A sender provides a message and activates the send signal. The receiver can then read the transmitted message.

This project demonstrates basic digital communication, message transfer, registers, control signals, and Verilog testbench-based verification.

## 🎯 Objectives

* Design a simple chat communication system.
* Transfer messages between two users.
* Store the transmitted message in a register.
* Indicate when a new message is available.
* Verify the design using a Verilog testbench.
* Generate simulation waveforms.

## 🛠️ Tools Used

* Verilog HDL
* VS Code
* Icarus Verilog
* GTKWave
* Git
* GitHub

## 🔌 Inputs

| Signal       |  Width | Description                |
| ------------ | -----: | -------------------------- |
| `clk`        |  1 bit | Clock signal               |
| `reset`      |  1 bit | Resets the system          |
| `send`       |  1 bit | Sends a message            |
| `message_in` | 8 bits | Message/data from sender   |
| `read`       |  1 bit | Receiver reads the message |

## 📤 Outputs

| Signal          |  Width | Description                 |
| --------------- | -----: | --------------------------- |
| `message_out`   | 8 bits | Received message            |
| `message_ready` |  1 bit | Indicates a new message     |
| `message_count` | 4 bits | Number of messages received |

## ⚙️ Working Principle

1. The system is initially reset.
2. User 1 provides an 8-bit message.
3. User 1 activates the `send` signal.
4. On the next clock edge, the message is stored.
5. `message_ready` becomes HIGH.
6. User 2 activates `read`.
7. The received message is available at `message_out`.
8. The message counter records the number of messages received.

## 💬 Example Messages

For simulation, ASCII characters can be used.

| Message | ASCII |
| ------- | ----- |
| `H`     | 72    |
| `I`     | 73    |
| `O`     | 79    |
| `K`     | 75    |

For example, the sender can transmit:

```text
H
I
O
K
```

## 🧪 Simulation

The testbench performs the following operations:

1. Reset the chat system.
2. Send message `H`.
3. Read message `H`.
4. Send message `I`.
5. Read message `I`.
6. Send message `O`.
7. Read message `O`.
8. Send message `K`.
9. Read message `K`.

The simulation also displays the transmitted and received messages.

## ▶️ Run Simulation

Compile the Verilog files using Icarus Verilog:

```bash
iverilog -o chat_sim chat_application.v chat_application_tb.v
```

Run the simulation:

```bash
vvp chat_sim
```

A waveform file named `chat_waveform.vcd` will be generated.

Open it using GTKWave:

```bash
gtkwave chat_waveform.vcd
```

## 📊 Expected Result

The simulation should show that messages are successfully transferred from the sender to the receiver.

Example:

```text
Message Sent: H
Message Received: H

Message Sent: I
Message Received: I

Message Sent: O
Message Received: O

Message Sent: K
Message Received: K
```

## 🚀 Future Enhancements

The project can be improved by adding:

* Multiple users
* Message memory/FIFO
* User IDs
* Message timestamps
* Message acknowledgment
* UART communication
* FPGA implementation
* LCD/OLED display
* Wireless communication interface

## 👩‍💻 Author

**Chat Application Using Verilog HDL**

A beginner-friendly digital communication project for learning Verilog HDL and RTL design.
