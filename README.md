# NASM POS System

A terminal-based **Point of Sale system** built using **NASM x86-64 Assembly Language** on **Ubuntu Linux**.

This project demonstrates low-level programming concepts such as registers, memory handling, loops, conditional jumps, procedures, Linux system calls, and structured menu-based program flow.

## Features

* Login authentication
* Main menu system
* Add items to cart
* View cart
* Remove items from cart
* Checkout system
* Coupon discount support
* Inventory management
* Stock checking
* Stock deduction after purchase
* Daily sales summary
* Cancel transaction
* Exit confirmation

## Tech Stack

* NASM x86-64 Assembly
* Ubuntu Linux
* Linux system calls
* Terminal-based interface

## How to Run

### 1. Install NASM

```bash
sudo apt update
sudo apt install nasm
```

### 2. Assemble the program

```bash
nasm -f elf64 Pos_system.asm -o Pos_system.o
```

### 3. Link the object file

```bash
ld Pos_system.o -o Pos_system
```

### 4. Run the program

```bash
./Pos_system
```

## Project Description

The NASM POS System is a command-line Point-of-Sale application developed in Assembly Language. It allows a cashier to log in, manage items, add products to a cart, apply coupon discounts, complete checkout, update inventory, and view daily sales reports.

The purpose of this project is to understand how low-level programming works, including direct memory usage, register operations, branching, loops, procedures, and Linux system calls.

## Main Menu

The system includes the following menu options:

1. Add Item
2. View Cart
3. Remove Item
4. Checkout
5. Inventory
6. Daily Sales Summary
7. Cancel Transaction
8. Exit

## Author

Muhammad Usman
