.ORIG x3000    

LEA  R0, HW    ; Загружаем адрес строки "Hello, World!" в регистр R0
PUTS       ; Выводим строку на консоль

HALT       ; Завершаем выполнение программы

HW .STRINGZ "Hello, World!"  ; Определение строки "Hello, World!"

.END       ; Конец программы
