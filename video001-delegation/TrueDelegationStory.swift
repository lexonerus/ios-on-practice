/*
 29.09.2021
 Alexey Krzywicki
 True Delegation Story / Реальная История Про Делегирование
*/

// MARK: Prehystory / Предистория

// A protocol is like a list of rules that need to be followed
// Протокол можно представить, как список правил, которым необходимо следовать

protocol OlderGremlinDelegate: AnyObject {
    func getAGlassOfWaterToOlderGremlin()
    // This protocol named OlderGremlinDelegate has function, but realization
    // of this function is not important for now
    // Данный протокол с именем OlderGremlinDelegate имеет функцию, 
    // но реализация данной функции совсем не важна для нас сейчас
}

// MARK: Characters in the story / Персонажи нашей истории

// Old gremlin (master)
// Старый гремлин (мастер)
class GrandfatherGremlin {
    // Can make whichever other gremlin is around at
    // the time be hes delegate (slave)
    // Способен дать задание любому другому гремлину
    // кто младше него (раб)
    weak var delegate: OlderGremlinDelegate?
    
    func tellAnyGremlinToGetMeSomeWater() {
        // The delegate is optional because even through
        // Im thirsty, there might not be anyone nearby
        // that I can boss around
        // Делегирование опционально, тк вокруг может
        // не быть других гремлинов способных выполнить задание
        delegate?.getAGlassOfWaterToOlderGremlin()
    }
}

// Grandchildren of Old Gremlin
// Внуки старого гремлина
class LittleGremlinBrothers: OlderGremlinDelegate {
    func getAGlassOfWaterToOlderGremlin() {
        // Little gremlins follows the letter of the law (protocol),
        // but no one said exactly how they had to respond
        // Маленькие гремлинские братья обяханы следовать букве закона (протоколу),
        // но никто не говорил, как именно они должны выполнять эту функцию
        print("Go get it yourself, you old faggot!")
        // Послали деда, пусть сам идет себе за водой
    }
}

// Gremlin sister
// also follows protocol
// Сестра старого гремлина
// так же следует протоколу
class GremlinSister: OlderGremlinDelegate {
    func getAGlassOfWaterToOlderGremlin() {
        // Another response
        // Другая реакция
        print("Here is your water")
    }
}

// MARK: The Story / История

// Older Gremlin Grandfather laying on the couch and watching hockey on TV
// Старый дед Гремлин лежит на диване и смотрит хоккейный матч по ТВ
let oldGremlin = GrandfatherGremlin()

// He has a little grandson named Mark
// У него есть внук по имени Марк
let mark = LittleGremlinBrothers()
// Also he has Sally, his sister
// Так же у него есть младшая сетстра Салли
let sally = GremlinSister()


// Mark walks into the room. Now old Gremlin has someone to ask
// Марк заходит в комнату, теперь у Деду есть к кому обратиться
oldGremlin.delegate = mark

// So he tells to Mark to get him some water
// Поэтому он просит Марка принести ему стакан воды
oldGremlin.tellAnyGremlinToGetMeSomeWater()

// Unfortunately no one lived happily ever after...
// And Mark go away
// Но Марк рявкнул на деда, и ушел

// Few hours later Sally came into the old Gremlin room
// Old Gremlin can now ask her
// Пару часов спустя в комнату к Деду заходит младшая сестра
// Теперь можно взаимодействать с ней
oldGremlin.delegate = sally

// And now Old Gremlin tells Sally that she get him some water
// Старый Гремлин попросил у Салли воды
oldGremlin.tellAnyGremlinToGetMeSomeWater()
// Sally love and respect older Gremlin, and bring him a galss of water
// Салли любит своего старшего брата, поэтому пошла и принесла ему воды

// Happy end.
// Счастливый финал.

