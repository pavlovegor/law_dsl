- физическое_лицо?(заявитель) | юридическое_лицо?(заявитель) | индивидуальный_предприниматель?(заявитель)
- проект_согласован?(данные_проекта)
- электронное_заявление_сни_подано?(заявление_сни) & личность_подтверждена_через_есиа?(реквизиты_есиа_заявителя)
- фотофиксация_исходной_ситуации_представлена?(фотографии_исходной_ситуации)
- топографический_план_с_маштабом_представлен?(топографический_план_с_маштабом, '1:500')
- ситуационный_план_представлен?(ситуационный_план)
- изображения_проектируемых_конструкций_представлены?(изображения_проектируемых_конструкций)
- документы_технической_инвентаризации_представлены?(документы_технической_инвентаризации, ["план помещения"])