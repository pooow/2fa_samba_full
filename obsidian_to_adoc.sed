# ищем пустую строку
/^$/ {
# переходим на следующую
	N
# меняем начало md block code на adoc block code
	s/```/\[source,subs="verbatim,quotes"\]\n----/g
}

# меняем конец md block code на adoc block code                                           
        s/```/----/g                        
# удаляем информацию о снапшотах стенда
	/WARNING:.* qm (snapshot|rollback)/d

# удаляем ненужную информацию в окончательной методике
/sed удалить start/,/sed удалить end/d
