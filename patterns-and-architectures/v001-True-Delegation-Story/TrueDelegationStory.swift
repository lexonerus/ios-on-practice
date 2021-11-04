/*
 29.09.2021
 Alexey Krzywicki
 True Delegation Story / Реальная История Про Делегирование
*/

// MARK: Prehystory / Предистория

// A protocol is like a list of rules that need to be followed
// Протокол можно представить, как список правил, которым необходимо следовать

protocol OlderHobbitDelegate: AnyObject {
    func getAGlassOfWaterToOlderHobbit()
    // This protocol named OlderHobbitDelegate has function, but realization
    // of this function is not important for now
    // Данный протокол с именем OlderHobbitDelegate имеет функцию, 
    // но реализация данной функции совсем не важна для нас сейчас
}

// MARK: Characters in the story / Персонажи нашей истории

// Old hobbit (master)
// Старый хоббит (мастер)
class GrandfatherHobbit {
    // Can make whichever other hobbit is around at
    // the time be hes delegate (slave)
    // Способен дать задание любому другому хоббитy
    // кто младше него (раб)
    weak var delegate: OlderHobbitDelegate?
    
    func tellAnyHobbitToGetMeSomeWater() {
        // The delegate is optional because even through
        // Im thirsty, there might not be anyone nearby
        // that I can boss around
        // Делегирование опционально, тк вокруг может
        // не быть других хоббитов способных выполнить задание
        delegate?.getAGlassOfWaterToOlderHobbit()
    }
}

// Grandchildren of Old Hobbit
// Внуки старого гремлина
class BadGrandson: OlderHobbitDelegate {
    func getAGlassOfWaterToOlderHobbit() {
        // Little hobbits follows the letter of the law (protocol),
        // but no one said exactly how they had to respond
        // Маленькие хоббиты обяханы следовать букве закона (протоколу),
        // но никто не говорил, как именно они должны выполнять эту функцию
        print("Go get it yourself, you old faggot!")
        // Послали деда, пусть сам идет себе за водой
    }
}

// Hobbit granddaoughter
// also follows protocol
// Внучка старого хоббитa
// так же следует протоколу
class GoodGranddaughter: OlderHobbitDelegate {
    func getAGlassOfWaterToOlderHobbit() {
        // Another response
        // Другая реакция
        print("Here is your water")
    }
}

// MARK: The Story / История

// Older Hobbit Grandfather laying on the couch and watching hockey on TV
// Старый дед хоббит лежит на диване и смотрит хоккейный матч по ТВ
let oldHobbit = GrandfatherHobbit()

// He has a little grandson named Ivan
// У него есть внук по имени Иван
let ivan = BadGrandson()
// Also he has Masha, his granddouughter
// Так же у него есть внучка Маша
let masha = GoodGranddaughter()


// Ivan walks into the room. Now old Hobbit has someone to ask
// Иван заходит в комнату, теперь у Деду есть к кому обратиться
oldHobbit.delegate = ivan

// So he tells to Ivan to get him some water
// Поэтому он просит Ивана принести ему стакан воды
oldHobbit.tellAnyHobbitToGetMeSomeWater()

// Unfortunately no one lived happily ever after...
// And Ivan go away
// Но Иван рявкнул на деда, и ушел

// Few hours later Masha came into the old Hobbit room
// Old Hobbit can now ask her
// Пару часов спустя в комнату к Деду заходит Маша
// Теперь можно взаимодействать с ней
oldHobbit.delegate = masha

// And now Old Hobbit tells Masha that she get him some water
// Старый хоббит попросил у Маши воды
oldHobbit.tellAnyHobbitToGetMeSomeWater()
// Masha love and respect older Hobbit, and bring him a galss of water
// Маша любит своего деда, поэтому пошла и принесла ему воды

// Happy end.
// Счастливый финал.
