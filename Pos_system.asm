%define MAX_PRODUCTS 10
%define NAME_LEN 32
%define CAT_LEN 16
%define USER_LEN 64

section .data
    ; Main messages
    title_msg db 10,"==============================",10
              db "         POS SYSTEM",10
              db "==============================",10,0

    login_title db 10,"--- User Authentication ---",10,0
    login_hint_msg db "Demo ID: admin | Demo Password: 1234",10,0
    username_prompt db "Username: ",0
    password_prompt db "Password: ",0
    login_success_msg db "Login successful!",10,0
    login_failed_msg db "Invalid username or password.",10,0
    access_denied_msg db "Access denied. Too many attempts.",10,0
    logged_in_as_msg db 10,"Logged in as: ",0
    datetime_label db "Date/Time: ",0
    month_days db 31,28,31,30,31,30,31,31,30,31,30,31

    menu_msg db 10,"========== MAIN MENU ==========",10
             db "1. Add Item to Cart",10
             db "2. View Cart",10
             db "3. Remove Item",10
             db "4. Checkout",10
             db "5. Inventory",10
             db "6. Daily Sales Summary",10
             db "7. Cancel Transaction",10
             db "8. Exit",10
             db "Select option: ",0

    inventory_menu_msg db 10,"======= INVENTORY MENU =======",10
                      db "1. Add New Product",10
                      db "2. Search Item",10
                      db "3. Update Product Details",10
                      db "4. Delete Product",10
                      db "5. View All Inventory",10
                      db "6. Return to Main Menu",10
                      db "Select option: ",0

    invalid_option_msg db "Invalid menu option.",10,0

    ; Validation messages
    invalid_number_msg    db "Invalid input. Numbers only.",10,0
    invalid_text_msg      db "Invalid input. Letters only.",10,0
    invalid_empty_msg     db "Input cannot be empty.",10,0
    invalid_price_msg     db "Invalid price. Enter a number greater than 0.",10,0
    invalid_stock_msg     db "Invalid stock. Enter a number greater than 0.",10,0
    invalid_code_msg      db "Invalid product code. Enter numbers only.",10,0
    invalid_name_msg      db "Invalid product name. Use letters and spaces only.",10,0
    invalid_category_msg  db "Invalid category. Use letters and spaces only.",10,0

    ; Product / cart messages
    add_cart_header_msg db 10,"----- ADD ITEM TO CART -----",10,0
    product_code_prompt db "Enter product code: ",0
    qty_prompt db "Enter quantity: ",0
    invalid_product_msg db "Invalid product code.",10,0
    invalid_qty_msg db "Invalid quantity.",10,0
    not_enough_stock_msg db "Not enough stock available.",10,0
    added_msg db "Item added to cart.",10,0
    low_stock_msg db "Warning: Low stock for this product.",10,0
    add_more_prompt db "Do you want to add more items? (Y/N): ",0
    invalid_yn_msg db "Please enter Y or N.",10,0

    cart_header_msg db 10,"----- CART -----",10,0
    cart_empty_msg db "Cart is empty.",10,0
    qty_label db "Quantity: ",0
    subtotal_label db "Subtotal: RM ",0
    total_label db "Current Total: RM ",0

    remove_prompt db "Enter product code to remove: ",0
    remove_qty_prompt db "Enter quantity to remove: ",0
    remove_success_msg db "Item removed from cart.",10,0
    item_not_in_cart_msg db "Item not found in cart.",10,0

    ; Checkout / coupon
    checkout_header_msg db 10,"----- CHECKOUT -----",10,0
    subtotal_total_label db "Subtotal: RM ",0
    discount_label db "Discount: RM ",0
    discounted_total_label db "Discounted Total: RM ",0
    tax_label db "Tax (6%): RM ",0
    final_total_label db "Final Total: RM ",0
    payment_prompt db "Enter payment amount: RM ",0
    insufficient_msg db "Insufficient payment. Try again.",10,0
    change_label db "Change: RM ",0

    coupon_prompt db "Enter coupon code (SAVE10 / SAVE5 / 0 to skip): ",0
    coupon_applied_msg db "Coupon applied successfully.",10,0
    invalid_coupon_msg db "Invalid coupon. Continuing without discount.",10,0
    coupon_used_label db "Coupon Used: ",0

    coupon10 db "SAVE10",0
    coupon5 db "SAVE5",0
    coupon_none db "NONE",0

    ; Inventory messages
    inventory_header_msg db 10,"----- INVENTORY -----",10,0
    search_header_msg db 10,"----- SEARCH ITEM -----",10,0
    update_details_header_msg db 10,"----- UPDATE PRODUCT DETAILS -----",10,0
    update_details_menu_msg db 10,"1. Update Product Name",10
                            db "2. Update Product Category",10
                            db "3. Update Product Price",10
                            db "4. Update Product Stock",10
                            db "5. Return to Inventory Menu",10
                            db "Select option: ",0
    add_product_header_msg db 10,"----- ADD NEW PRODUCT -----",10,0
    delete_product_header_msg db 10,"----- DELETE PRODUCT -----",10,0

    product_found_msg db "Product found:",10,0
    update_detail_success_msg db "Product details updated successfully.",10,0
    product_added_msg db "New product added successfully.",10,0
    inventory_full_msg db "Inventory is full.",10,0
    duplicate_code_msg db "Product code already exists.",10,0
    delete_success_msg db "Product deleted successfully.",10,0
    delete_not_allowed_msg db "Cannot delete product because it is in cart.",10,0
    delete_sales_exists_msg db "Cannot delete product because sales record exists.",10,0
    product_not_found_msg db "Product not found.",10,0

    price_prompt db "Enter price: RM ",0
    update_stock_value_prompt db "Enter updated stock: ",0
    initial_stock_prompt db "Enter initial stock: ",0
    product_name_prompt db "Enter product name: ",0
    category_prompt db "Enter category: ",0

    code_label db "Code: ",0
    category_label db "Category: ",0
    name_label db "Name: ",0
    price_label db "Price: RM ",0
    stock_label db "Stock: ",0
    low_note db "[LOW STOCK]",10,0

    ; Sales / receipt / exit
    sales_header_msg db 10,"----- DAILY SALES SUMMARY -----",10,0
    transactions_label db "Total Transactions: ",0
    items_sold_label db "Total Items Sold: ",0
    daily_sales_label db "Total Revenue: RM ",0
    avg_sale_label db "Average Sale Value: RM ",0
    product_sales_details_msg db 10,"Product Sales Details:",10,0
    sold_qty_label db "Sold Qty: ",0
    revenue_label db "Revenue: RM ",0
    best_selling_label db 10,"Best-Selling Item:",10,0
    highest_qty_label db "Highest Quantity Sold: ",0
    no_sales_yet_msg db "No sales data available yet.",10,0

    cancel_success_msg db "Transaction cancelled.",10,0
    nothing_cancel_msg db "Nothing to cancel.",10,0
    thank_you_msg db 10,"Thank you for using the POS system.",10,0

    receipt_header_msg db 10,"===== RECEIPT =====",10,0
    receipt_line_msg db "--------------------------------",10,0
    receipt_items_title db "Items Purchased",10,0
    receipt_totals_title db "Payment Summary",10,0
    receipt_txn_label db "Transaction ID: ",0
    cashier_label db "Cashier: ",0
    payment_label db "Payment: RM ",0
    receipt_end_msg db "===================",10,0

    ; Authentication data
    valid_user db "admin",0
    valid_pass db "1234",0

    ; Product data
    product_count dq 3

    product_codes dq 1001, 1002, 1003
                 times (MAX_PRODUCTS - 3) dq 0

    product_names:
        db "Burger",0
        times (NAME_LEN - 7) db 0
        db "Fries",0
        times (NAME_LEN - 6) db 0
        db "Cola",0
        times (NAME_LEN - 5) db 0
        times ((MAX_PRODUCTS - 3) * NAME_LEN) db 0

    product_categories:
        db "Food",0
        times (CAT_LEN - 5) db 0
        db "Snack",0
        times (CAT_LEN - 6) db 0
        db "Drink",0
        times (CAT_LEN - 6) db 0
        times ((MAX_PRODUCTS - 3) * CAT_LEN) db 0

    prices dq 800, 500, 300
           times (MAX_PRODUCTS - 3) dq 0

    stocks dq 20, 15, 30
           times (MAX_PRODUCTS - 3) dq 0

    cart_qty dq 0, 0, 0
             times (MAX_PRODUCTS - 3) dq 0

    sold_qty dq 0, 0, 0
             times (MAX_PRODUCTS - 3) dq 0

    nl db 10,0

section .bss
    input_buf          resb 64
    user_buf           resb USER_LEN
    pass_buf           resb USER_LEN
    current_user       resb USER_LEN
    current_coupon     resb 16
    num_buf            resb 32
    datetime_buf       resb 20
    tv_buf             resq 2

    product_name_input resb NAME_LEN
    category_input     resb CAT_LEN
    new_product_code   resq 1

    current_total      resq 1
    discount_amount    resq 1
    discounted_total   resq 1
    tax_amount         resq 1
    final_total        resq 1
    payment_amount     resq 1
    change_amount      resq 1
    avg_sale_value     resq 1

    daily_sales        resq 1
    transaction_count  resq 1
    total_items_sold   resq 1
    transaction_id     resq 1
    cart_count         resq 1

section .text
    global _start

_start:
    mov qword [current_total], 0
    mov qword [discount_amount], 0
    mov qword [discounted_total], 0
    mov qword [tax_amount], 0
    mov qword [final_total], 0
    mov qword [payment_amount], 0
    mov qword [change_amount], 0
    mov qword [avg_sale_value], 0
    mov qword [daily_sales], 0
    mov qword [transaction_count], 0
    mov qword [total_items_sold], 0
    mov qword [transaction_id], 1
    mov qword [cart_count], 0

    mov rdi, title_msg
    call print_str
    call print_current_datetime

    call user_authentication
    cmp rax, 1
    jne program_exit_now

    call main_menu

program_exit_now:
    mov rax, 60
    xor rdi, rdi
    syscall

user_authentication:
    xor r12, r12

.login_loop:
    mov rdi, login_title
    call print_str
    mov rdi, login_hint_msg
    call print_str

    mov rdi, username_prompt
    call print_str
    mov rdi, user_buf
    mov rsi, USER_LEN - 1
    call read_line

    mov rdi, password_prompt
    call print_str
    mov rdi, pass_buf
    mov rsi, USER_LEN - 1
    call read_line

    mov rdi, user_buf
    mov rsi, valid_user
    call strcmp
    cmp rax, 1
    jne .invalid

    mov rdi, pass_buf
    mov rsi, valid_pass
    call strcmp
    cmp rax, 1
    jne .invalid

    mov rdi, current_user
    mov rsi, user_buf
    mov rcx, USER_LEN
    call copy_string_fixed

    mov rdi, login_success_msg
    call print_str
    mov rax, 1
    ret

.invalid:
    mov rdi, login_failed_msg
    call print_str
    inc r12
    cmp r12, 3
    jl .login_loop

    mov rdi, access_denied_msg
    call print_str
    xor rax, rax
    ret

main_menu:
.menu_loop:
    mov rdi, logged_in_as_msg
    call print_str
    mov rdi, current_user
    call print_str
    mov rdi, nl
    call print_str

    mov rdi, menu_msg
    call print_str

    mov rdi, input_buf
    mov rsi, 63
    call read_line
    mov rdi, input_buf
    call parse_uint

    cmp rax, 1
    je .do_add_to_cart
    cmp rax, 2
    je .do_view_cart
    cmp rax, 3
    je .do_remove_from_cart
    cmp rax, 4
    je .do_checkout
    cmp rax, 5
    je .do_inventory
    cmp rax, 6
    je .do_view_daily_sales
    cmp rax, 7
    je .do_cancel_transaction
    cmp rax, 8
    je .do_exit_system

    mov rdi, invalid_option_msg
    call print_str
    jmp .menu_loop

.do_add_to_cart:
    call add_to_cart
    jmp .menu_loop

.do_view_cart:
    call view_cart
    jmp .menu_loop

.do_remove_from_cart:
    call remove_from_cart
    jmp .menu_loop

.do_checkout:
    call checkout
    jmp .menu_loop

.do_inventory:
    call inventory_menu
    jmp .menu_loop

.do_view_daily_sales:
    call view_daily_sales
    jmp .menu_loop

.do_cancel_transaction:
    call cancel_transaction
    jmp .menu_loop

.do_exit_system:
    call exit_system
    ret

add_to_cart:
.add_loop:
    mov rdi, add_cart_header_msg
    call print_str
    call view_inventory

.get_code:
    mov rdi, product_code_prompt
    call print_str
    mov rdi, input_buf
    mov rsi, 63
    call read_line

    mov rdi, input_buf
    call is_empty_string
    cmp rax, 1
    je .invalid_product

    mov rdi, input_buf
    call is_numeric_string
    cmp rax, 1
    jne .invalid_product

    mov rdi, input_buf
    call parse_uint
    cmp rax, 1
    jb .invalid_product

    call find_product_by_code
    cmp rax, -1
    je .invalid_product

    mov r13, rax

.get_qty:
    mov rdi, qty_prompt
    call print_str
    mov rdi, input_buf
    mov rsi, 63
    call read_line

    mov rdi, input_buf
    call is_empty_string
    cmp rax, 1
    je .invalid_qty

    mov rdi, input_buf
    call is_numeric_string
    cmp rax, 1
    jne .invalid_qty

    mov rdi, input_buf
    call parse_uint
    cmp rax, 1
    jb .invalid_qty
    mov r14, rax

    mov rbx, [cart_qty + r13*8]
    mov rcx, [stocks + r13*8]
    mov rdx, rbx
    add rdx, r14
    cmp rdx, rcx
    jg .not_enough_stock

    cmp rbx, 0
    jne .skip_cart_inc
    inc qword [cart_count]

.skip_cart_inc:
    add qword [cart_qty + r13*8], r14

    mov rax, [prices + r13*8]
    imul rax, r14
    add qword [current_total], rax

    mov rdi, added_msg
    call print_str

    mov rax, [stocks + r13*8]
    sub rax, [cart_qty + r13*8]
    cmp rax, 5
    jg .ask_more

    mov rdi, low_stock_msg
    call print_str

.ask_more:
.ask_more_loop:
    mov rdi, add_more_prompt
    call print_str
    mov rdi, input_buf
    mov rsi, 63
    call read_line

    mov al, [input_buf]
    cmp al, 'Y'
    je .add_loop
    cmp al, 'y'
    je .add_loop
    cmp al, 'N'
    je .done
    cmp al, 'n'
    je .done

    mov rdi, invalid_yn_msg
    call print_str
    jmp .ask_more_loop

.done:
    ret

.invalid_product:
    mov rdi, invalid_code_msg
    call print_str
    jmp .get_code

.invalid_qty:
    mov rdi, invalid_qty_msg
    call print_str
    jmp .get_qty

.not_enough_stock:
    mov rdi, not_enough_stock_msg
    call print_str
    jmp .get_qty

view_cart:
    cmp qword [cart_count], 0
    jne .show
    mov rdi, cart_empty_msg
    call print_str
    ret

.show:
    mov rdi, cart_header_msg
    call print_str

    xor r12, r12
.loop:
    mov rbx, [product_count]
    cmp r12, rbx
    jge .after

    mov rax, [cart_qty + r12*8]
    cmp rax, 0
    je .next

    mov rdi, code_label
    call print_str
    mov rax, [product_codes + r12*8]
    call print_num
    mov rdi, nl
    call print_str

    mov rdi, category_label
    call print_str
    mov rax, r12
    shl rax, 4
    lea rdi, [product_categories + rax]
    call print_str
    mov rdi, nl
    call print_str

    mov rdi, name_label
    call print_str
    mov rax, r12
    shl rax, 5
    lea rdi, [product_names + rax]
    call print_str
    mov rdi, nl
    call print_str

    mov rdi, qty_label
    call print_str
    mov rax, [cart_qty + r12*8]
    call print_num
    mov rdi, nl
    call print_str

    mov rdi, subtotal_label
    call print_str
    mov rax, [cart_qty + r12*8]
    imul rax, qword [prices + r12*8]
    call print_money
    mov rdi, nl
    call print_str
    mov rdi, nl
    call print_str

.next:
    inc r12
    jmp .loop

.after:
    mov rdi, total_label
    call print_str
    mov rax, [current_total]
    call print_money
    mov rdi, nl
    call print_str
    ret

remove_from_cart:
    cmp qword [cart_count], 0
    jne .start
    mov rdi, cart_empty_msg
    call print_str
    ret

.start:
    call view_cart

.get_code:
    mov rdi, remove_prompt
    call print_str
    mov rdi, input_buf
    mov rsi, 63
    call read_line

    mov rdi, input_buf
    call is_empty_string
    cmp rax, 1
    je .not_found

    mov rdi, input_buf
    call is_numeric_string
    cmp rax, 1
    jne .not_found

    mov rdi, input_buf
    call parse_uint
    cmp rax, 1
    jb .not_found

    call find_product_by_code
    cmp rax, -1
    je .not_found

    mov r12, rax

    mov rax, [cart_qty + r12*8]
    cmp rax, 0
    je .not_found

.get_qty:
    mov rdi, remove_qty_prompt
    call print_str
    mov rdi, input_buf
    mov rsi, 63
    call read_line

    mov rdi, input_buf
    call is_empty_string
    cmp rax, 1
    je .invalid_qty

    mov rdi, input_buf
    call is_numeric_string
    cmp rax, 1
    jne .invalid_qty

    mov rdi, input_buf
    call parse_uint
    cmp rax, 1
    jb .invalid_qty
    mov r13, rax

    mov rax, [cart_qty + r12*8]
    cmp r13, rax
    jg .invalid_qty

    mov rax, r13
    imul rax, qword [prices + r12*8]
    sub qword [current_total], rax

    sub qword [cart_qty + r12*8], r13
    cmp qword [cart_qty + r12*8], 0
    jne .removed_ok

    dec qword [cart_count]

.removed_ok:
    mov rdi, remove_success_msg
    call print_str
    ret

.invalid_qty:
    mov rdi, invalid_qty_msg
    call print_str
    jmp .get_qty

.not_found:
    mov rdi, item_not_in_cart_msg
    call print_str
    ret

checkout:
    cmp qword [cart_count], 0
    jne .start
    mov rdi, cart_empty_msg
    call print_str
    ret

.start:
    mov qword [discount_amount], 0
    mov qword [discounted_total], 0
    mov byte [current_coupon], 0

    mov rdi, checkout_header_msg
    call print_str

    mov rdi, subtotal_total_label
    call print_str
    mov rax, [current_total]
    call print_money
    mov rdi, nl
    call print_str

    mov rdi, coupon_prompt
    call print_str
    mov rdi, input_buf
    mov rsi, 63
    call read_line

    mov rdi, input_buf
    call is_empty_string
    cmp rax, 1
    je .no_coupon

    mov al, [input_buf]
    cmp al, '0'
    je .no_coupon

    mov rdi, input_buf
    mov rsi, coupon10
    call strcmp
    cmp rax, 1
    je .apply_10

    mov rdi, input_buf
    mov rsi, coupon5
    call strcmp
    cmp rax, 1
    je .apply_5

    mov rdi, invalid_coupon_msg
    call print_str
    jmp .no_coupon

.apply_10:
    mov rbx, 10
    call calc_discount_percent_rounded
    mov [discount_amount], rax

    mov rdi, current_coupon
    mov rsi, coupon10
    mov rcx, 16
    call copy_string_fixed

    mov rdi, coupon_applied_msg
    call print_str
    jmp .after_coupon

.apply_5:
    mov rbx, 5
    call calc_discount_percent_rounded
    mov [discount_amount], rax

    mov rdi, current_coupon
    mov rsi, coupon5
    mov rcx, 16
    call copy_string_fixed

    mov rdi, coupon_applied_msg
    call print_str
    jmp .after_coupon

.no_coupon:
    mov qword [discount_amount], 0
    mov rdi, current_coupon
    mov rsi, coupon_none
    mov rcx, 16
    call copy_string_fixed

.after_coupon:
    mov rax, [current_total]
    sub rax, [discount_amount]
    mov [discounted_total], rax

    mov rax, [discounted_total]
    imul rax, 6
    add rax, 50
    xor rdx, rdx
    mov rbx, 100
    div rbx
    mov [tax_amount], rax

    mov rax, [discounted_total]
    add rax, [tax_amount]
    mov [final_total], rax

    mov rdi, discount_label
    call print_str
    mov rax, [discount_amount]
    call print_money
    mov rdi, nl
    call print_str

    mov rdi, discounted_total_label
    call print_str
    mov rax, [discounted_total]
    call print_money
    mov rdi, nl
    call print_str

    mov rdi, tax_label
    call print_str
    mov rax, [tax_amount]
    call print_money
    mov rdi, nl
    call print_str

    mov rdi, final_total_label
    call print_str
    mov rax, [final_total]
    call print_money
    mov rdi, nl
    call print_str

.payment_loop:
    mov rdi, payment_prompt
    call print_str
    mov rdi, input_buf
    mov rsi, 63
    call read_line

    mov rdi, input_buf
    call is_empty_string
    cmp rax, 1
    je .bad_payment

    mov rdi, input_buf
    call parse_money_sen
    cmp rax, -1
    je .bad_payment
    mov [payment_amount], rax

    cmp rax, [final_total]
    jb .insufficient

    mov rax, [payment_amount]
    sub rax, [final_total]
    mov [change_amount], rax

    call update_inventory_after_sale

    mov rax, [daily_sales]
    add rax, [final_total]
    mov [daily_sales], rax

    inc qword [transaction_count]

    call print_receipt
    call clear_cart
    ret

.bad_payment:
    mov rdi, invalid_number_msg
    call print_str
    jmp .payment_loop

.insufficient:
    mov rdi, insufficient_msg
    call print_str
    jmp .payment_loop

calc_discount_percent_rounded:
    ; rbx = percentage (e.g. 10, 5), returns rounded discount in rax.
    mov rax, [current_total]
    imul rax, rbx
    add rax, 50
    xor rdx, rdx
    mov rcx, 100
    div rcx
    ret

inventory_menu:
.menu_loop:
    mov rdi, inventory_menu_msg
    call print_str

    mov rdi, input_buf
    mov rsi, 63
    call read_line
    mov rdi, input_buf
    call parse_uint

    cmp rax, 1
    je .do_add_new_product
    cmp rax, 2
    je .do_search_item
    cmp rax, 3
    je .do_update_product_details
    cmp rax, 4
    je .do_delete_product
    cmp rax, 5
    je .do_view_inventory
    cmp rax, 6
    je .return_main

    mov rdi, invalid_option_msg
    call print_str
    jmp .menu_loop

.do_add_new_product:
    call add_new_product
    jmp .menu_loop

.do_search_item:
    call search_item
    jmp .menu_loop

.do_update_product_details:
    call update_product_details
    jmp .menu_loop

.do_delete_product:
    call delete_product
    jmp .menu_loop

.do_view_inventory:
    call view_inventory
    jmp .menu_loop

.return_main:
    ret

add_new_product:
    mov rax, [product_count]
    cmp rax, MAX_PRODUCTS
    jae .full

    mov rdi, add_product_header_msg
    call print_str

.get_code:
    mov rdi, product_code_prompt
    call print_str
    mov rdi, input_buf
    mov rsi, 63
    call read_line

    mov rdi, input_buf
    call is_empty_string
    cmp rax, 1
    je .bad_code

    mov rdi, input_buf
    call is_numeric_string
    cmp rax, 1
    jne .bad_code

    mov rdi, input_buf
    call parse_uint
    cmp rax, 1
    jb .bad_code

    mov [new_product_code], rax
    call find_product_by_code
    cmp rax, -1
    jne .duplicate_code

.get_category:
    mov rdi, category_prompt
    call print_str
    mov rdi, category_input
    mov rsi, CAT_LEN - 1
    call read_line

    mov rdi, category_input
    call is_empty_string
    cmp rax, 1
    je .bad_category

    mov rdi, category_input
    call is_alpha_space_string
    cmp rax, 1
    jne .bad_category

.get_name:
    mov rdi, product_name_prompt
    call print_str
    mov rdi, product_name_input
    mov rsi, NAME_LEN - 1
    call read_line

    mov rdi, product_name_input
    call is_empty_string
    cmp rax, 1
    je .bad_name

    mov rdi, product_name_input
    call is_alpha_space_string
    cmp rax, 1
    jne .bad_name

.get_price:
    mov rdi, price_prompt
    call print_str
    mov rdi, input_buf
    mov rsi, 63
    call read_line

    mov rdi, input_buf
    call is_empty_string
    cmp rax, 1
    je .bad_price

    mov rdi, input_buf
    call is_numeric_string
    cmp rax, 1
    jne .bad_price

    mov rdi, input_buf
    call parse_uint
    cmp rax, 1
    jb .bad_price
    mov r14, rax

.get_stock:
    mov rdi, initial_stock_prompt
    call print_str
    mov rdi, input_buf
    mov rsi, 63
    call read_line

    mov rdi, input_buf
    call is_empty_string
    cmp rax, 1
    je .bad_stock

    mov rdi, input_buf
    call is_numeric_string
    cmp rax, 1
    jne .bad_stock

    mov rdi, input_buf
    call parse_uint
    cmp rax, 1
    jb .bad_stock
    mov r15, rax

    mov r12, [product_count]

    mov rax, [new_product_code]
    mov [product_codes + r12*8], rax

    mov rax, r12
    shl rax, 4
    lea rdi, [product_categories + rax]
    mov rsi, category_input
    mov rcx, CAT_LEN
    call copy_string_fixed

    mov rax, r12
    shl rax, 5
    lea rdi, [product_names + rax]
    mov rsi, product_name_input
    mov rcx, NAME_LEN
    call copy_string_fixed

    imul r14, 100
    mov [prices + r12*8], r14
    mov [stocks + r12*8], r15
    mov qword [cart_qty + r12*8], 0
    mov qword [sold_qty + r12*8], 0

    inc qword [product_count]

    mov rdi, product_added_msg
    call print_str
    ret

.bad_code:
    mov rdi, invalid_code_msg
    call print_str
    jmp .get_code

.bad_category:
    mov rdi, invalid_category_msg
    call print_str
    jmp .get_category

.bad_name:
    mov rdi, invalid_name_msg
    call print_str
    jmp .get_name

.bad_price:
    mov rdi, invalid_price_msg
    call print_str
    jmp .get_price

.bad_stock:
    mov rdi, invalid_stock_msg
    call print_str
    jmp .get_stock

.duplicate_code:
    mov rdi, duplicate_code_msg
    call print_str
    jmp .get_code

.full:
    mov rdi, inventory_full_msg
    call print_str
    ret

search_item:
    mov rdi, search_header_msg
    call print_str

    mov rdi, product_code_prompt
    call print_str
    mov rdi, input_buf
    mov rsi, 63
    call read_line

    call parse_inputbuf_positive_uint
    cmp rax, -1
    je .invalid

    call find_product_by_code
    cmp rax, -1
    je .invalid

    mov r12, rax

    mov rdi, product_found_msg
    call print_str
    call print_product_detail
    ret

.invalid:
    mov rdi, invalid_product_msg
    call print_str
    ret

update_product_details:
    ; New feature: update selected product field from Inventory Menu.
.submenu_loop:
    mov rdi, update_details_header_msg
    call print_str
    mov rdi, update_details_menu_msg
    call print_str

    mov rdi, input_buf
    mov rsi, 63
    call read_line
    mov rdi, input_buf
    call parse_uint

    cmp rax, 1
    je .update_name
    cmp rax, 2
    je .update_category
    cmp rax, 3
    je .update_price
    cmp rax, 4
    je .update_stock_value
    cmp rax, 5
    je .return_inventory

    mov rdi, invalid_option_msg
    call print_str
    jmp .submenu_loop

.update_name:
    call .get_target_product
    cmp rax, -1
    je .submenu_loop
    mov r12, rax

.get_name:
    mov rdi, product_name_prompt
    call print_str
    mov rdi, product_name_input
    mov rsi, NAME_LEN - 1
    call read_line

    mov rdi, product_name_input
    call is_empty_string
    cmp rax, 1
    je .bad_name

    mov rdi, product_name_input
    call is_alpha_space_string
    cmp rax, 1
    jne .bad_name

    mov rax, r12
    shl rax, 5
    lea rdi, [product_names + rax]
    mov rsi, product_name_input
    mov rcx, NAME_LEN
    call copy_string_fixed

    mov rdi, update_detail_success_msg
    call print_str
    ret

.bad_name:
    mov rdi, invalid_name_msg
    call print_str
    jmp .get_name

.update_category:
    call .get_target_product
    cmp rax, -1
    je .submenu_loop
    mov r12, rax

.get_category:
    mov rdi, category_prompt
    call print_str
    mov rdi, category_input
    mov rsi, CAT_LEN - 1
    call read_line

    mov rdi, category_input
    call is_empty_string
    cmp rax, 1
    je .bad_category

    mov rdi, category_input
    call is_alpha_space_string
    cmp rax, 1
    jne .bad_category

    mov rax, r12
    shl rax, 4
    lea rdi, [product_categories + rax]
    mov rsi, category_input
    mov rcx, CAT_LEN
    call copy_string_fixed

    mov rdi, update_detail_success_msg
    call print_str
    ret

.bad_category:
    mov rdi, invalid_category_msg
    call print_str
    jmp .get_category

.update_price:
    call .get_target_product
    cmp rax, -1
    je .submenu_loop
    mov r12, rax
    mov r14, prices
    mov r15, price_prompt
    mov r13, invalid_price_msg
    call .update_price_field
    ret

.update_stock_value:
    call .get_target_product
    cmp rax, -1
    je .submenu_loop
    mov r12, rax
    mov r14, stocks
    mov r15, update_stock_value_prompt
    mov r13, invalid_stock_msg
    call .update_numeric_field
    ret

.update_price_field:
    call .update_numeric_field
    mov rax, [r14 + r12*8]
    imul rax, 100
    mov [r14 + r12*8], rax
    ret

.update_numeric_field:
.get_numeric:
    mov rdi, r15
    call print_str
    mov rdi, input_buf
    mov rsi, 63
    call read_line

    mov rdi, input_buf
    call is_empty_string
    cmp rax, 1
    je .bad_numeric

    mov rdi, input_buf
    call is_numeric_string
    cmp rax, 1
    jne .bad_numeric

    mov rdi, input_buf
    call parse_uint
    cmp rax, 1
    jb .bad_numeric

    mov [r14 + r12*8], rax
    mov rdi, update_detail_success_msg
    call print_str
    ret

.bad_numeric:
    mov rdi, r13
    call print_str
    jmp .get_numeric

.get_target_product:
    ; Shared lookup for update sub-options.
    mov rdi, product_code_prompt
    call print_str
    mov rdi, input_buf
    mov rsi, 63
    call read_line

    call parse_inputbuf_positive_uint
    cmp rax, -1
    je .invalid_code

    call find_product_by_code
    cmp rax, -1
    je .not_found
    ret

.invalid_code:
    mov rdi, invalid_code_msg
    call print_str
    mov rax, -1
    ret

.not_found:
    mov rdi, product_not_found_msg
    call print_str
    mov rax, -1
    ret

.return_inventory:
    ret

delete_product:
    mov rdi, delete_product_header_msg
    call print_str

.get_code:
    mov rdi, product_code_prompt
    call print_str
    mov rdi, input_buf
    mov rsi, 63
    call read_line

    call parse_inputbuf_positive_uint
    cmp rax, -1
    je .invalid

    call find_product_by_code
    cmp rax, -1
    je .invalid

    mov r12, rax

    mov rax, [cart_qty + r12*8]
    cmp rax, 0
    jne .not_allowed_cart

    mov rax, [sold_qty + r12*8]
    cmp rax, 0
    jg .not_allowed_sales

.shift_loop:
    mov rbx, [product_count]
    dec rbx
    cmp r12, rbx
    jge .clear_last

    mov rax, [product_codes + r12*8 + 8]
    mov [product_codes + r12*8], rax

    mov rax, [prices + r12*8 + 8]
    mov [prices + r12*8], rax

    mov rax, [stocks + r12*8 + 8]
    mov [stocks + r12*8], rax

    mov rax, [cart_qty + r12*8 + 8]
    mov [cart_qty + r12*8], rax

    mov rax, [sold_qty + r12*8 + 8]
    mov [sold_qty + r12*8], rax

    mov r13, r12
    shl r13, 4
    lea rdi, [product_categories + r13]
    mov r14, r12
    inc r14
    shl r14, 4
    lea rsi, [product_categories + r14]
    mov rcx, CAT_LEN
.copy_cat:
    mov al, [rsi]
    mov [rdi], al
    inc rsi
    inc rdi
    loop .copy_cat

    mov r13, r12
    shl r13, 5
    lea rdi, [product_names + r13]
    mov r14, r12
    inc r14
    shl r14, 5
    lea rsi, [product_names + r14]
    mov rcx, NAME_LEN
.copy_name:
    mov al, [rsi]
    mov [rdi], al
    inc rsi
    inc rdi
    loop .copy_name

    inc r12
    jmp .shift_loop

.clear_last:
    mov rbx, [product_count]
    dec rbx

    mov qword [product_codes + rbx*8], 0
    mov qword [prices + rbx*8], 0
    mov qword [stocks + rbx*8], 0
    mov qword [cart_qty + rbx*8], 0
    mov qword [sold_qty + rbx*8], 0

    mov r13, rbx
    shl r13, 4
    lea rdi, [product_categories + r13]
    mov rcx, CAT_LEN
.clear_cat:
    mov byte [rdi], 0
    inc rdi
    loop .clear_cat

    mov r13, rbx
    shl r13, 5
    lea rdi, [product_names + r13]
    mov rcx, NAME_LEN
.clear_name:
    mov byte [rdi], 0
    inc rdi
    loop .clear_name

    dec qword [product_count]

    mov rdi, delete_success_msg
    call print_str
    ret

.not_allowed_cart:
    mov rdi, delete_not_allowed_msg
    call print_str
    ret

.not_allowed_sales:
    mov rdi, delete_sales_exists_msg
    call print_str
    ret

.invalid:
    mov rdi, invalid_product_msg
    call print_str
    jmp .get_code

view_inventory:
    mov rdi, inventory_header_msg
    call print_str

    xor r12, r12
.loop:
    mov rbx, [product_count]
    cmp r12, rbx
    jge .done

    call print_product_detail

    mov rax, [stocks + r12*8]
    cmp rax, 5
    jg .normal

    mov rdi, low_note
    call print_str
    jmp .after_item

.normal:
    mov rdi, nl
    call print_str

.after_item:
    mov rdi, nl
    call print_str
    inc r12
    jmp .loop

.done:
    ret

update_inventory_after_sale:
    xor r12, r12
.loop:
    mov rbx, [product_count]
    cmp r12, rbx
    jge .done

    mov rax, [cart_qty + r12*8]
    cmp rax, 0
    je .next

    sub qword [stocks + r12*8], rax
    add qword [sold_qty + r12*8], rax
    add qword [total_items_sold], rax

.next:
    inc r12
    jmp .loop

.done:
    ret

view_daily_sales:
    mov rdi, sales_header_msg
    call print_str

    mov rdi, transactions_label
    call print_str
    mov rax, [transaction_count]
    call print_num
    mov rdi, nl
    call print_str

    mov rdi, items_sold_label
    call print_str
    mov rax, [total_items_sold]
    call print_num
    mov rdi, nl
    call print_str

    mov rdi, daily_sales_label
    call print_str
    mov rax, [daily_sales]
    call print_money
    mov rdi, nl
    call print_str

    mov rax, [transaction_count]
    cmp rax, 0
    je .avg_zero

    mov rax, [daily_sales]
    xor rdx, rdx
    mov rbx, [transaction_count]
    div rbx
    mov [avg_sale_value], rax
    jmp .avg_print

.avg_zero:
    mov qword [avg_sale_value], 0

.avg_print:
    mov rdi, avg_sale_label
    call print_str
    mov rax, [avg_sale_value]
    call print_money
    mov rdi, nl
    call print_str

    mov rdi, product_sales_details_msg
    call print_str

    xor r12, r12
    xor r14, r14
    mov r15, -1

.loop:
    mov rbx, [product_count]
    cmp r12, rbx
    jge .best_item

    mov rdi, code_label
    call print_str
    mov rax, [product_codes + r12*8]
    call print_num
    mov rdi, nl
    call print_str

    mov rdi, name_label
    call print_str
    mov rax, r12
    shl rax, 5
    lea rdi, [product_names + rax]
    call print_str
    mov rdi, nl
    call print_str

    mov rdi, sold_qty_label
    call print_str
    mov rax, [sold_qty + r12*8]
    call print_num
    mov rdi, nl
    call print_str

    mov rdi, revenue_label
    call print_str
    mov rax, [sold_qty + r12*8]
    imul rax, qword [prices + r12*8]
    call print_money
    mov rdi, nl
    call print_str
    mov rdi, nl
    call print_str

    mov rax, [sold_qty + r12*8]
    cmp rax, r14
    jle .next
    mov r14, rax
    mov r15, r12

.next:
    inc r12
    jmp .loop

.best_item:
    mov rdi, best_selling_label
    call print_str

    cmp r15, -1
    je .no_sales
    cmp r14, 0
    je .no_sales

    mov rdi, code_label
    call print_str
    mov rax, [product_codes + r15*8]
    call print_num
    mov rdi, nl
    call print_str

    mov rdi, name_label
    call print_str
    mov rax, r15
    shl rax, 5
    lea rdi, [product_names + rax]
    call print_str
    mov rdi, nl
    call print_str

    mov rdi, highest_qty_label
    call print_str
    mov rax, r14
    call print_num
    mov rdi, nl
    call print_str
    ret

.no_sales:
    mov rdi, no_sales_yet_msg
    call print_str
    ret

cancel_transaction:
    cmp qword [cart_count], 0
    jne .do_cancel
    mov rdi, nothing_cancel_msg
    call print_str
    ret

.do_cancel:
    call clear_cart
    mov rdi, cancel_success_msg
    call print_str
    ret

print_receipt:
    mov rdi, receipt_header_msg
    call print_str
    mov rdi, receipt_line_msg
    call print_str
    call print_current_datetime

    mov rdi, receipt_txn_label
    call print_str
    mov rax, [transaction_id]
    call print_num
    mov rdi, nl
    call print_str

    mov rdi, cashier_label
    call print_str
    mov rdi, current_user
    call print_str
    mov rdi, nl
    call print_str

    mov rdi, coupon_used_label
    call print_str
    mov rdi, current_coupon
    call print_str
    mov rdi, nl
    call print_str
    mov rdi, receipt_line_msg
    call print_str
    mov rdi, receipt_items_title
    call print_str
    mov rdi, receipt_line_msg
    call print_str

    xor r12, r12
.item_loop:
    mov rbx, [product_count]
    cmp r12, rbx
    jge .totals

    mov rax, [cart_qty + r12*8]
    cmp rax, 0
    je .next_item

    mov rdi, code_label
    call print_str
    mov rax, [product_codes + r12*8]
    call print_num
    mov rdi, nl
    call print_str

    mov rdi, name_label
    call print_str
    mov rax, r12
    shl rax, 5
    lea rdi, [product_names + rax]
    call print_str
    mov rdi, nl
    call print_str

    mov rdi, qty_label
    call print_str
    mov rax, [cart_qty + r12*8]
    call print_num
    mov rdi, nl
    call print_str

    mov rdi, subtotal_label
    call print_str
    mov rax, [cart_qty + r12*8]
    imul rax, qword [prices + r12*8]
    call print_money
    mov rdi, nl
    call print_str
    mov rdi, receipt_line_msg
    call print_str

.next_item:
    inc r12
    jmp .item_loop

.totals:
    mov rdi, receipt_totals_title
    call print_str
    mov rdi, receipt_line_msg
    call print_str

    mov rdi, subtotal_total_label
    call print_str
    mov rax, [current_total]
    call print_money
    mov rdi, nl
    call print_str

    mov rdi, discount_label
    call print_str
    mov rax, [discount_amount]
    call print_money
    mov rdi, nl
    call print_str

    mov rdi, discounted_total_label
    call print_str
    mov rax, [discounted_total]
    call print_money
    mov rdi, nl
    call print_str

    mov rdi, tax_label
    call print_str
    mov rax, [tax_amount]
    call print_money
    mov rdi, nl
    call print_str

    mov rdi, final_total_label
    call print_str
    mov rax, [final_total]
    call print_money
    mov rdi, nl
    call print_str

    mov rdi, payment_label
    call print_str
    mov rax, [payment_amount]
    call print_money
    mov rdi, nl
    call print_str

    mov rdi, change_label
    call print_str
    mov rax, [change_amount]
    call print_money
    mov rdi, nl
    call print_str

    mov rdi, receipt_line_msg
    call print_str
    mov rdi, receipt_end_msg
    call print_str

    inc qword [transaction_id]
    ret

clear_cart:
    xor r12, r12
.loop:
    cmp r12, MAX_PRODUCTS
    jge .done
    mov qword [cart_qty + r12*8], 0
    inc r12
    jmp .loop

.done:
    mov qword [cart_count], 0
    mov qword [current_total], 0
    mov qword [discount_amount], 0
    mov qword [discounted_total], 0
    mov qword [tax_amount], 0
    mov qword [final_total], 0
    mov qword [payment_amount], 0
    mov qword [change_amount], 0
    mov byte [current_coupon], 0
    ret

exit_system:
    mov rdi, thank_you_msg
    call print_str
    ret

print_current_datetime:
    ; New feature: live Malaysia time (UTC+08) display in DD/MM/YYYY HH:MM:SS format.
    call build_current_datetime
    mov rdi, datetime_label
    call print_str
    mov rdi, datetime_buf
    call print_str
    mov rdi, nl
    call print_str
    ret

build_current_datetime:
    ; time(NULL)
    mov rax, 201
    xor rdi, rdi
    syscall

    ; Convert to Malaysia local time by adding UTC+08:00.
    add rax, 28800

    ; seconds -> days + seconds-of-day
    xor rdx, rdx
    mov rbx, 86400
    div rbx
    mov r8, rax         ; days since 1970-01-01
    mov r9, rdx         ; seconds in day

    ; hour, minute, second
    mov rax, r9
    xor rdx, rdx
    mov rbx, 3600
    div rbx
    mov r10, rax        ; hour
    mov rax, rdx
    xor rdx, rdx
    mov rbx, 60
    div rbx
    mov r11, rax        ; minute
    mov r12, rdx        ; second

    ; Convert epoch days to UTC year-month-day using simple loops.
    mov r13, 1970       ; year
.year_loop:
    mov rdi, r13
    call is_leap_year
    mov r15, rax        ; leap flag
    mov rcx, 365
    cmp r15, 1
    jne .year_days_ready
    inc rcx
.year_days_ready:
    cmp r8, rcx
    jb .year_done
    sub r8, rcx
    inc r13
    jmp .year_loop
.year_done:
    mov rbx, 1          ; month 1..12
.month_loop:
    movzx rcx, byte [month_days + rbx - 1]
    cmp rbx, 2
    jne .month_days_ready
    cmp r15, 1
    jne .month_days_ready
    inc rcx
.month_days_ready:
    cmp r8, rcx
    jb .month_done
    sub r8, rcx
    inc rbx
    jmp .month_loop
.month_done:
    mov rbp, r8
    inc rbp             ; day 1..31
    mov r14, rbx        ; preserve month across formatter calls

    lea rdi, [datetime_buf]
    mov rax, rbp
    call write_2digits
    mov byte [rdi], '/'
    inc rdi
    mov rax, r14
    call write_2digits
    mov byte [rdi], '/'
    inc rdi
    mov rax, r13
    call write_4digits
    mov byte [rdi], ' '
    inc rdi
    mov rax, r10
    call write_2digits
    mov byte [rdi], ':'
    inc rdi
    mov rax, r11
    call write_2digits
    mov byte [rdi], ':'
    inc rdi
    mov rax, r12
    call write_2digits
    mov byte [rdi], 0
    ret

is_leap_year:
    mov rax, rdi
    test rax, 3
    jne .not_leap

    mov rax, rdi
    xor rdx, rdx
    mov rbx, 100
    div rbx
    cmp rdx, 0
    jne .is_leap

    mov rax, rdi
    xor rdx, rdx
    mov rbx, 400
    div rbx
    cmp rdx, 0
    je .is_leap

.not_leap:
    xor rax, rax
    ret

.is_leap:
    mov rax, 1
    ret

write_4digits:
    mov rbx, 1000
    xor rdx, rdx
    div rbx
    add al, '0'
    mov [rdi], al
    inc rdi
    mov rax, rdx
    mov rbx, 100
    xor rdx, rdx
    div rbx
    add al, '0'
    mov [rdi], al
    inc rdi
    mov rax, rdx
    mov rbx, 10
    xor rdx, rdx
    div rbx
    add al, '0'
    mov [rdi], al
    inc rdi
    add dl, '0'
    mov [rdi], dl
    inc rdi
    ret

write_2digits:
    mov rbx, 10
    xor rdx, rdx
    div rbx
    add al, '0'
    mov [rdi], al
    inc rdi
    add dl, '0'
    mov [rdi], dl
    inc rdi
    ret

find_product_by_code:
    mov r13, rax
    xor r12, r12

.search_loop:
    mov rbx, [product_count]
    cmp r12, rbx
    jge .not_found

    mov rax, [product_codes + r12*8]
    cmp rax, r13
    je .found

    inc r12
    jmp .search_loop

.found:
    mov rax, r12
    ret

.not_found:
    mov rax, -1
    ret

print_product_detail:
    mov rdi, code_label
    call print_str
    mov rax, [product_codes + r12*8]
    call print_num
    mov rdi, nl
    call print_str

    mov rdi, category_label
    call print_str
    mov rax, r12
    shl rax, 4
    lea rdi, [product_categories + rax]
    call print_str
    mov rdi, nl
    call print_str

    mov rdi, name_label
    call print_str
    mov rax, r12
    shl rax, 5
    lea rdi, [product_names + rax]
    call print_str
    mov rdi, nl
    call print_str

    mov rdi, price_label
    call print_str
    mov rax, [prices + r12*8]
    call print_money
    mov rdi, nl
    call print_str

    mov rdi, stock_label
    call print_str
    mov rax, [stocks + r12*8]
    call print_num
    mov rdi, nl
    call print_str
    ret

is_empty_string:
    mov al, [rdi]
    cmp al, 0
    je .empty
    xor rax, rax
    ret
.empty:
    mov rax, 1
    ret

is_numeric_string:
    mov al, [rdi]
    cmp al, 0
    je .invalid
.loop:
    mov al, [rdi]
    cmp al, 0
    je .valid
    cmp al, '0'
    jb .invalid
    cmp al, '9'
    ja .invalid
    inc rdi
    jmp .loop
.valid:
    mov rax, 1
    ret
.invalid:
    xor rax, rax
    ret

is_alpha_space_string:
    mov al, [rdi]
    cmp al, 0
    je .invalid
.loop:
    mov al, [rdi]
    cmp al, 0
    je .valid
    cmp al, 'A'
    jb .check_lower
    cmp al, 'Z'
    jbe .next
.check_lower:
    cmp al, 'a'
    jb .check_space
    cmp al, 'z'
    jbe .next
.check_space:
    cmp al, ' '
    je .next
    jmp .invalid
.next:
    inc rdi
    jmp .loop
.valid:
    mov rax, 1
    ret
.invalid:
    xor rax, rax
    ret

copy_string_fixed:
    push rbx
    xor rbx, rbx

.copy_loop:
    cmp rbx, rcx
    jae .done

    mov al, [rsi + rbx]
    mov [rdi + rbx], al
    cmp al, 0
    je .zero_fill

    inc rbx
    jmp .copy_loop

.zero_fill:
    inc rbx
.zero_loop:
    cmp rbx, rcx
    jae .done
    mov byte [rdi + rbx], 0
    inc rbx
    jmp .zero_loop

.done:
    pop rbx
    ret

print_str:
    mov rsi, rdi
    xor rdx, rdx
.len_loop:
    cmp byte [rsi + rdx], 0
    je .write
    inc rdx
    jmp .len_loop
.write:
    mov rax, 1
    mov rdi, 1
    syscall
    ret

read_line:
    push rbx
    mov r8, rdi
    mov rdx, rsi
    mov rax, 0
    mov rdi, 0
    mov rsi, r8
    syscall

    cmp rax, 0
    jle .empty
    xor rcx, rcx

.scan:
    cmp rcx, rax
    jge .nullterm
    mov bl, [r8 + rcx]
    cmp bl, 10
    je .cut
    cmp bl, 13
    je .cut
    inc rcx
    jmp .scan

.cut:
    mov byte [r8 + rcx], 0
    mov rax, rcx
    pop rbx
    ret

.nullterm:
    mov byte [r8 + rcx], 0
    mov rax, rcx
    pop rbx
    ret

.empty:
    mov byte [r8], 0
    xor rax, rax
    pop rbx
    ret

strcmp:
    push rbx
.loop:
    mov al, [rdi]
    mov bl, [rsi]
    cmp al, bl
    jne .not_equal
    cmp al, 0
    je .equal
    inc rdi
    inc rsi
    jmp .loop
.equal:
    mov rax, 1
    pop rbx
    ret
.not_equal:
    xor rax, rax
    pop rbx
    ret

parse_uint:
    push rbx
    xor rax, rax
.loop:
    mov bl, [rdi]
    cmp bl, 0
    je .done
    cmp bl, '0'
    jb .next
    cmp bl, '9'
    ja .next
    imul rax, rax, 10
    movzx rbx, bl
    sub rbx, '0'
    add rax, rbx
.next:
    inc rdi
    jmp .loop
.done:
    pop rbx
    ret

parse_inputbuf_positive_uint:
    mov rdi, input_buf
    call is_empty_string
    cmp rax, 1
    je .invalid

    mov rdi, input_buf
    call is_numeric_string
    cmp rax, 1
    jne .invalid

    mov rdi, input_buf
    call parse_uint
    cmp rax, 1
    jb .invalid
    ret

.invalid:
    mov rax, -1
    ret

parse_money_sen:
    ; Parses "123", "123.4", "123.45" -> sen in rax.
    ; Returns -1 in rax for invalid input.
    push rbx

    mov al, [rdi]
    cmp al, 0
    je .invalid

    xor rax, rax            ; whole part
    xor r8, r8              ; fractional part (0..99)
    xor r9, r9              ; fractional digits count
    xor r10, r10            ; dot seen flag

.loop:
    mov bl, [rdi]
    cmp bl, 0
    je .finish

    cmp bl, '.'
    je .dot

    cmp bl, '0'
    jb .invalid
    cmp bl, '9'
    ja .invalid

    movzx rcx, bl
    sub rcx, '0'

    cmp r10, 0
    jne .frac_digit

    imul rax, rax, 10
    add rax, rcx
    inc rdi
    jmp .loop

.frac_digit:
    cmp r9, 2
    jae .invalid
    imul r8, r8, 10
    add r8, rcx
    inc r9
    inc rdi
    jmp .loop

.dot:
    cmp r10, 0
    jne .invalid
    mov r10, 1
    inc rdi
    jmp .loop

.finish:
    cmp r10, 1
    jne .build
    cmp r9, 0
    je .invalid
    cmp r9, 1
    jne .build
    imul r8, r8, 10

.build:
    imul rax, rax, 100
    add rax, r8
    pop rbx
    ret

.invalid:
    mov rax, -1
    pop rbx
    ret

print_num:
    push rbx
    lea rsi, [num_buf + 31]
    mov byte [rsi], 0

    cmp rax, 0
    jne .convert
    dec rsi
    mov byte [rsi], '0'
    mov rdi, rsi
    call print_str
    pop rbx
    ret

.convert:
    mov rbx, 10
.digits:
    xor rdx, rdx
    div rbx
    add dl, '0'
    dec rsi
    mov [rsi], dl
    cmp rax, 0
    jne .digits

    mov rdi, rsi
    call print_str
    pop rbx
    ret

print_money:
    ; rax contains amount in sen, prints RM as x.yy
    push rbx
    mov rbx, 100
    xor rdx, rdx
    div rbx
    mov r8, rdx

    call print_num

    mov byte [num_buf], '.'
    mov rax, r8
    mov rbx, 10
    xor rdx, rdx
    div rbx
    add al, '0'
    mov [num_buf + 1], al
    add dl, '0'
    mov [num_buf + 2], dl
    mov byte [num_buf + 3], 0

    mov rdi, num_buf
    call print_str
    pop rbx
    ret
