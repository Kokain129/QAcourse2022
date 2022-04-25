// 1. Написать скриптик, который сосчитает и выведет результат от возведения 2 в степень 10, начиная со степени 1

const a = 2;

for (let b = 1; b < 11; b++) {
const result = a ** b;
console.log(result);
}

// or via Math.pow(a,b)

let a1 = 3

for (let b = 1; b < 11; b++) {
    const MyFunction = Math.pow(a1, b);
    console.log(MyFunction)
    }

// 1*. Преобразовать 1 задачу в функцию, принимающую на вход степень, в которую будет возводиться число 2

const a2 = 2;
let b;

const Exponent = function (b) {
for (let c = 1; c < 10; c++, b++) {
const result = a2 ** b;
console.log(result);
}
}

Exponent(8)

// 2. Написать скрипт, который выведет 5 строк в консоль таким образом, чтобы в первой строчке выводилось :), во второй :):) и так далее


// просто выведет смайл в столбик

// let string = ':)' 

// for(let numberOfRows = 0; numberOfRows < 5; numberOfRows++) {
//     console.log(string)    
// }


let str = ' ¯\_(ツ)_/¯'

for(let numberOfRows = 0; numberOfRows < 5; numberOfRows++) {
    let str2 = str;
    console.log(str)
    str += str2
}

// 2*. Преобразовать 2 задачу в функцию, принимающую на вход строку, которая и будет выводиться в консоль (как в условии смайлик), а также количество строк для вывода 
// e.g. function printSmile(stroka, numberOfRows)

let smile = "";
let numberOfRows;

const printSmile = function (smile, numberOfRows) {
    for(let s = 0; s < numberOfRows; s++) {
        let smile2 = smile;
        console.log(smile)
        smile += smile2
    }
}
printSmile(":D", 6)


// 3**.  Написать функцию, которая принимает на вход слово. Задача функции посчитать и вывести в консоль, сколько в слове гласных, и сколько согласных букв.
// e.g. function getWordStructure(word)
// В консоли: 
// Слово (word) состоит из  (число) гласных и (число) согласных букв

// Проверки: 'case', 'Case', 'Check-list'





// 4**. Написать функцию, которая проверяет, является ли слово палиндромом
// e.g. function isPalindrom(word)

// Проверки: 'abba', 'Abba'