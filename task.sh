#!/bin/bash

# 1. Создаём каталог task с вложенными директориями
mkdir -p task/dir1 task/dir2 task/dir3/dir4

# 2. Изменяем текущую директорию на task
cd task

# 3. Создаём пустой файл task/dir2/empty
touch dir2/empty

# 4. Создаём файл hello.sh с указанным содержанием
echo '#!/bin/bash
echo "$1, привет!"' > dir2/hello.sh

# 5. Устанавливаем права rwxrw-r--
chmod 764 dir2/hello.sh

# 6. Сохраняем список файлов task/dir2 в list.txt
ls dir2 > dir2/list.txt

# 7. Копируем содержимое dir2 в dir3/dir4
cp -r dir2/* dir3/dir4/

# 8. Записываем список *.txt файлов в summary.txt
find . -name "*.txt" > dir1/summary.txt

# 9. Дописываем содержимое list.txt
cat dir2/list.txt >> dir1/summary.txt

# 10. Определяем переменную окружения
NAME="Всем студентам"

# 11. Запускаем hello.sh с аргументом
./dir2/hello.sh "$NAME" >> dir1/summary.txt

# 12. Переименовываем файл
mv dir1/summary.txt "Практическое задание"

# 13. Выводим содержимое файла
cat "Практическое задание"

# 14. Ищем и сортируем строки с "dir"
grep "dir" "Практическое задание" | sort

# 15. Возвращаемся в родительскую директорию
cd ..

# 16. Удаляем директорию task
rm -rf task
