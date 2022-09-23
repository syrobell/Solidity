// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// require bir durumu kontrol eder durum requiered'ın dışındaysa hata mesajı döner ve öncesinde yapılan işlemler geri alınır.
// revert ise neredeyse require ile aynı fakat birden fazla if kullanımı gerekliyse require yerine if statementlarımızı yazıyoruz ve sonunda revert ile kontrol ediyoruz.
// assert ise bir condition'un true veya false durumunu kontrol eder kod false olduğu sürece hata döner.
contract error{
    function testRequire(uint _i) public pure {
        require( i <= 10 , "i > 10"); //eğer ki i sayısı 10dan küçük veya eşit değilse error mesajı olarak i 10 dan büyüktür döner.
        // code
    }

    function testRevert(uint i) public pure {
        if ( i > 10) {
            revert("i > 10") ; // fazladan if statement eklenebilir.
        }
    }

    uint public num = 123; //123 sabit sayısı atandı
    function testAssert() public view {
        assert(num == 123); // bu sayı 123 eşit mi değil mi kontrol ediyor eğer false döner ise hata verir.
    }
    function foo(uint i) public {
        num += 1;
        require( i < 10); // burada gelen sayı 13 olsun, işlem sırasında önce num 1 artırılıp ondan sonra 13 ile 10 kontrol ediliyor. Durum false olduğu için num + 1
        //işlemi de geriye alınıyor.
    }
    error MyError(address caller, uint i); //Custom Error oluşturmak.

    function testCustomError(uint _i) public view {
    if ( i > 10) {
    revert MyError(msg.sender, _i);
    }
}