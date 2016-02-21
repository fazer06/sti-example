# Single Table Inheritance with Rails 4

I got sidetracked while doing the Active Record section of the Odin Project, and started looking into single table inheritance with the help of this tutorial, I build the project so i had a working example and a better inderstanding.

### http://samurails.com/tutorial/single-table-inheritance-with-rails-4-part-1/

## What is Single Table Inheritance ?

    Single Table Inheritance is, as the name suggests it, a way to add inheritance to your models. STI lets you save different models inheriting from the same model inside a single table.

    For example, let’s say you have an employee model. The employees can be of two types : manager or developer. They pretty much share the same attributes and columns. However, their behavior should be different. Creating two tables having the exact same fields would be bad.

    But here comes STI ! With STI, you can just keep your employee model and simply subclass it with your two types of employee. The only thing to do at the database level is to add a type column to the employees table that ActiveRecord will automatically use to identify the submodel.

### Create a tribe
- tribe = Tribe.create(name: 'LionTribe')

### Create some animals and add them to the tribe

- tribe.animals << Lion.new(name: "Simba", age: 10)
- tribe.animals << WildBoar.new(name: "Pumba", age: 30)
- tribe.animals << Meerkat.new(name: "Timon", age: 30)

## Console Usage

- tribe.wild_boars
- tribe.lions
- tribe.meerkats
- tribe.animals

- Animal.lions
- Animal.meerkats
- Animal.wild_boars 
- Animal.all
- Animal.races

- Lion.all
- Meerkat.all
- WildBoar.all
