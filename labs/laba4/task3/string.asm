.ORIG x3000  

LOOP
 LEA R0, INPUT  ; Загружаем адрес строки "Your str: " в регистр R0
 PUTS       ; Выводим строку на консоль
 LEA R1, BUFF   ; Загружаем адрес буфера BUFF в регистр R1
 ADD R2, R1, #0  ; Копируем адрес буфера в регистр R2 (R2 будет использоваться как индекс)

LOOP_READ
 GETC       ; Считываем символ с клавиатуры
 OUT        ; Выводим считанный символ на консоль
 ADD R4, R0, #-10 ; Проверяем, был ли введен символ ENTER (ASCII код 10)
 BRz  LOOP_PRINT  ; Если ENTER, переходим к выводу
 STR,  R0, R2, #0 ; Сохраняем символ в буфер BUFF по адресу R2
 ADD R2, R2, #1  ; Увеличиваем индекс R2 для следующего символа
 BRnzp LOOP_READ ; Переходим к следующему символу

LOOP_PRINT
 LEA R0, BUFF   ; Загружаем адрес буфера BUFF в регистр R0
 PUTS       ; Выводим строку из буфера на консоль

HALT       ; Завершаем выполнение программы

INPUT .STRINGZ "Your str: " ; Определение строки "Your str: "
BUFF .BLKW #80   ; Определение буфера для хранения строки (80 байт)

.END       ; Конец программы
