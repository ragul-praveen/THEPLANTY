import Foundation
class Quiz: NSObject {
    var list = [Question]()
    override init() {
         list.append(Question(image:"Leaf",questionText:"What does this image represent?",choiceA:"Leaf",choiceB:"Flower",choiceC:"Stem",choiceD:"Pollen",answer:1 ))
        list.append(Question(image:"Berry",questionText:"What does this image represent?  ",choiceA:"Flower",choiceB:"Berry",choiceC:"Flower",choiceD:"Stem",answer:2 ))
         list.append(Question(image:"Bud",questionText:"What does this image represent?  ",choiceA:"Stem",choiceB:"Leaf",choiceC:"Bud",choiceD:"Flower",answer:3 ))
        list.append(Question(image:"Branch",questionText:"What does this image represent?  ",choiceA:"Flower",choiceB:"Stem",choiceC:"Bark",choiceD:"Branch",answer:4 ))
        
        list.append(Question(image:"Root",questionText:" What does this image represent? ",choiceA:"Root",choiceB:"Flower",choiceC:"Stem",choiceD:"Bark",answer:1 ))

        list.append(Question(image:"Ring",questionText:"What does this image represent?  ",choiceA:"Bark",choiceB:"Ring",choiceC:"Flower",choiceD:"Stem",answer:2 ))
        
        list.append(Question(image:"Seed",questionText:"What does this image represent?  ",choiceA:"Stem",choiceB:"Bark",choiceC:"Seed",choiceD:"Flower",answer:3 ))
        
        list.append(Question(image:"Sprout",questionText:" What does this image represent? ",choiceA:"Flower",choiceB:"Stem",choiceC:"Bark",choiceD:"Sprout",answer:4 ))
        
        list.append(Question(image:"Stem",questionText:"What does this image represent?  ",choiceA:"Stem",choiceB:"Flower",choiceC:"Bud",choiceD:"Bark",answer:1 ))
        
        
        list.append(Question(image:"Leaf",questionText:"What does this image represent?  ",choiceA:"Bark",choiceB:"Leaf",choiceC:"Flower",choiceD:"Stem",answer:2 ))
        
        
        list.append(Question(image:"Pollen",questionText:" What does this image represent? ",choiceA:"Stem",choiceB:"Bark",choiceC:"Pollen",choiceD:"Flower",answer:3 ))
        
        
         list.append(Question(image:"Stigma",questionText:"What does this image represent?  ",choiceA:"Flower",choiceB:"Leaf",choiceC:"Bark",choiceD:"Stigma",answer:4 ))
        
        list.append(Question(image:"Sepal",questionText:"What does this image represent?  ",choiceA:"Sepal",choiceB:"Flower",choiceC:"Stem",choiceD:"Log",answer:1 ))
        
        list.append(Question(image:"Thorn",questionText:"What does this image represent?  ",choiceA:"Bark",choiceB:"Thorn",choiceC:"Flower",choiceD:"Stem",answer:2 ))
        
         list.append(Question(image:"Bark",questionText:"What does this image represent?  ",choiceA:"Stem",choiceB:"Stem",choiceC:"Bark",choiceD:"Flower",answer:3 ))
        

    }
}

