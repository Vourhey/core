# Smart contract AddressList security check

- Семейство контрактов: [Aira DAO Core][1]
- Исходный код контракта: [AddressList.sol](https://github.com/airalab/core/master/sol/lib/AddressList.sol)

## Проверка общих [рекомендаций Airalab][2]

| № | Описание                                             | |
|---|:-----------------------------------------------------|:--------------------------:|
| 1 | Внешние вызовы                                       | ![good](https://cdn.rawgit.com/primer/octicons/master/build/svg/check.svg)  |
| 2 | Изоляция внешних вызовов в отдельной транзакции      | ![good](https://cdn.rawgit.com/primer/octicons/master/build/svg/check.svg) |
| 3 | Деление целых чисел                                  | ![good](https://cdn.rawgit.com/primer/octicons/master/build/svg/check.svg)     |
| 4 | Деление на ноль                                      | ![good](https://cdn.rawgit.com/primer/octicons/master/build/svg/check.svg)        |
| 5 | Переполнение переменных                              | ![good](https://cdn.rawgit.com/primer/octicons/master/build/svg/check.svg)   |
| 6 | Приоритет изменения состояния над внешним вызовом    | ![good](https://cdn.rawgit.com/primer/octicons/master/build/svg/check.svg) | 
| 7 | Перебор динамических массивов                        | ![good](https://cdn.rawgit.com/primer/octicons/master/build/svg/check.svg) | 
| 8 | Привязка логики работы к метке времени               | ![good](https://cdn.rawgit.com/primer/octicons/master/build/svg/check.svg) |
| 9 | Миграция данных контракта                            | ![good](https://cdn.rawgit.com/primer/octicons/master/build/svg/check.svg)  |
|10 | Метки остановки работы                               | ![warning](https://cdn.rawgit.com/primer/octicons/master/build/svg/issue-opened.svg)|
|11 | Метки задежки по времени                             | ![warning](https://cdn.rawgit.com/primer/octicons/master/build/svg/issue-opened.svg)     |
|12 | Формальная верификация                               | ![warning](https://cdn.rawgit.com/primer/octicons/master/build/svg/issue-opened.svg)   |


## Известные атаки на контракты Ethereum платформы

| № | Описание                                             |  |
|---|:-----------------------------------------------------|:-------------------:|
| 1 | Атака по глубине стека                               | ![good](https://cdn.rawgit.com/primer/octicons/master/build/svg/check.svg)   |
| 2 | Условия гонки                                        | ![good](https://cdn.rawgit.com/primer/octicons/master/build/svg/check.svg)|
| 3 | DoS при исключении в стороннем коде                  | ![good](https://cdn.rawgit.com/primer/octicons/master/build/svg/check.svg)     |
| 4 | DoS при выходе за лимит газа                         | ![good](https://cdn.rawgit.com/primer/octicons/master/build/svg/check.svg) |

## Проверка на известные атаки

## Комментарии по коду


[1]: https://github.com/airalab/core 
[2]: https://github.com/airalab