//
//  ItemViewModel.swift
//  OmasHausmittel
//
//  Created by Siarhei Wehrhahn on 01.07.24.
//

import Foundation

class ItemViewModel: ObservableObject {
    @Published var isDetailViewActive = false
    @Published var index = 0
    
    @Published var householdTips: [Item] = [
        Item(title: "Zitrone gegen Blutflecken", description: "Zitrone ist gut, um Blutflecken aus der Kleidung zu entfernen. Einfach Zitronensaft direkt auf den Fleck auftragen, einwirken lassen und dann ausspülen.", index: 0),
        Item(title: "Essig für glänzende Fenster", description: "Mischen Sie Wasser und Essig im Verhältnis 1:1, um Fenster streifenfrei zu reinigen. Der Essig löst Schmutz und sorgt für Glanz.", index: 1),
        Item(title: "Backpulver gegen verstopfte Abflüsse", description: "Eine halbe Tasse Backpulver in den Abfluss geben, dann eine halbe Tasse Essig hinterher schütten. Nach 15 Minuten mit heißem Wasser nachspülen.", index: 2),
        Item(title: "Kaffeesatz gegen Ameisen", description: "Streuen Sie Kaffeesatz entlang der Ameisenpfade. Der Geruch vertreibt die Ameisen.", index: 3),
        Item(title: "Zwiebel gegen Mückenstiche", description: "Eine frische Zwiebelscheibe auf den Mückenstich legen. Das lindert den Juckreiz und reduziert die Schwellung.", index: 4)
    ]
    
    @Published var cleaningTips: [Item] = [
        Item(title: "Natron für die Teppichreinigung", description: "Streuen Sie Natron über den Teppich und lassen Sie es über Nacht einwirken. Am nächsten Tag absaugen, um Gerüche zu entfernen.", index: 0),
        Item(title: "Mikrowelle mit Zitronenwasser reinigen", description: "Eine Schüssel mit Wasser und Zitronenscheiben in die Mikrowelle stellen und einige Minuten erhitzen. Der Dampf löst Schmutz und Fett, danach einfach auswischen.", index: 1),
        Item(title: "Salz für eingebrannte Pfannen", description: "Streuen Sie Salz in die noch warme Pfanne und reiben Sie mit einem Schwamm. Das Salz wirkt wie ein Scheuermittel und entfernt angebrannte Rückstände.", index: 2),
        Item(title: "Zeitungspapier zum Fensterputzen", description: "Verwenden Sie zerknülltes Zeitungspapier anstelle eines Tuchs. Es hinterlässt keine Streifen und poliert die Scheiben.", index: 3),
        Item(title: "Zahnpasta für Silberpolitur", description: "Reiben Sie Silber mit etwas Zahnpasta ein, lassen Sie es kurz einwirken und polieren Sie es dann mit einem weichen Tuch.", index: 4)
    ]

    @Published var lifeHacks: [Item] = [
        Item(title: "Alufolie zum Schärfen von Scheren", description: "Mehrfach gefaltete Alufolie mit der Schere schneiden. Die Schere wird dadurch wieder scharf.", index: 0),
        Item(title: "Bananenschalen für Pflanzen", description: "Bananenschalen zerkleinern und in die Erde einarbeiten. Sie liefern wichtige Nährstoffe für die Pflanzen.", index: 1),
        Item(title: "Gummiband als Schraubendreherhilfe", description: "Legen Sie ein Gummiband über den Kopf einer abgenutzten Schraube. Das Gummiband bietet zusätzlichen Halt und erleichtert das Herausdrehen.", index: 2),
        Item(title: "Holzkohle gegen Feuchtigkeit", description: "Legen Sie ein Stück Holzkohle in feuchte Bereiche, um die Feuchtigkeit zu absorbieren und Gerüche zu verhindern.", index: 3),
        Item(title: "Binderclip für Kabelmanagement", description: "Verwenden Sie Binderclips, um Kabel ordentlich zusammenzuhalten und zu verhindern, dass sie sich verheddern.", index: 4)
    ]

    @Published var kitchenTips: [Item] = [
        Item(title: "Kaffeesatz als Dünger", description: "Kaffeesatz ist ein hervorragender Dünger für Pflanzen. Er ist reich an Nährstoffen und verbessert die Bodenstruktur.", index: 0),
        Item(title: "Reis zur Rettung nasser Elektronik", description: "Legen Sie nasse Elektronikgeräte in eine Schüssel mit trockenem Reis. Der Reis zieht die Feuchtigkeit heraus.", index: 1),
        Item(title: "Eiertrick zum Frischetest", description: "Legen Sie ein Ei in ein Glas Wasser. Frische Eier sinken, ältere Eier schwimmen wegen der größeren Luftkammer.", index: 2),
        Item(title: "Holzlöffel gegen Überkochen", description: "Legen Sie einen Holzlöffel quer über den Topf, um das Überkochen von Wasser zu verhindern.", index: 3),
        Item(title: "Apfelessig für flauschigen Reis", description: "Geben Sie einen Teelöffel Apfelessig ins Kochwasser. Der Reis wird fluffiger und weniger klebrig.", index: 4)
    ]

    @Published var clothingTips: [Item] = [
        Item(title: "Rasierklinge gegen Fusseln", description: "Mit einer Rasierklinge sanft über den Stoff fahren, um Fusseln und Knötchen zu entfernen.", index: 0),
        Item(title: "Weißweinessig als Weichspüler", description: "Eine halbe Tasse Weißweinessig in das Weichspülerfach der Waschmaschine geben. Der Essig macht die Wäsche weich und neutralisiert Gerüche.", index: 1),
        Item(title: "Kreide gegen Fettflecken", description: "Reiben Sie Kreide auf Fettflecken vor dem Waschen. Die Kreide absorbiert das Fett und erleichtert das Entfernen in der Wäsche.", index: 2),
        Item(title: "Haarspray gegen Tintenflecken", description: "Sprühen Sie Haarspray auf den Tintenfleck, lassen Sie es kurz einwirken und tupfen Sie den Fleck dann mit einem feuchten Tuch ab.", index: 3),
        Item(title: "Bier für Lederschuhe", description: "Reiben Sie Ihre Lederschuhe mit einem weichen Tuch und etwas Bier ein. Das Leder wird glänzend und geschmeidig.", index: 4)
    ]

    @Published var healthTips: [Item] = [
        Item(title: "Honig gegen Husten", description: "Ein Löffel Honig lindert Hustenreiz und beruhigt den Hals. Honig hat entzündungshemmende Eigenschaften.", index: 0),
        Item(title: "Ingwer gegen Übelkeit", description: "Kauen Sie ein Stück frischen Ingwer oder trinken Sie Ingwertee, um Übelkeit zu lindern.", index: 1),
        Item(title: "Kamillentee gegen Augenentzündungen", description: "Kamillenteebeutel abkühlen lassen und auf die geschlossenen Augen legen. Die Kamille wirkt entzündungshemmend und beruhigt.", index: 2),
        Item(title: "Apfelessig gegen Fußgeruch", description: "Fußbad mit Apfelessig hilft, Bakterien zu bekämpfen und Fußgeruch zu reduzieren.", index: 3),
        Item(title: "Knoblauch gegen Ohrenschmerzen", description: "Ein paar Tropfen warmes Knoblauchöl ins Ohr träufeln. Knoblauch hat antibakterielle und schmerzlindernde Eigenschaften.", index: 4)
    ]
}
