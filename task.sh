#!/bin/bash

# Удаляем возможные остатки от предыдущих запусков
rm -rf dir1 dir2 dir3 empty hello.sh list.txt 2>/dev/null

# 1. Создать директории
mkdir dir1 dir2 dir3

# 2. Создать пустой файл
touch empty

# 3. Создать hello.sh
echo '#!/bin/bash
echo "Hello, World!"' > hello.sh

# 4. Создать list.txt
ls /home > list.txt

# 5. Работа с dir1
cp list.txt dir1/
mv dir1/list.txt dir1/summary.txt

# 6. Копирование в dir2
cp list.txt dir2/

# 7. Работа с dir3/dir4
mkdir -p dir3/dir4
cp list.txt dir3/dir4/

# 8. Вывод hello.sh
cat hello.sh

# 9. Приветствие
echo "Всем студентам, привет!"

# 10. Поиск list.txt (кроме корневого)
find . -mindepth 2 -name list.txt | sort

# 11. Вывод основных файлов
echo -e "empty\nhello.sh\nlist.txt"

# 12. Повторный вывод list.txt из поддиректорий
find . -mindepth 2 -name list.txt | sort
