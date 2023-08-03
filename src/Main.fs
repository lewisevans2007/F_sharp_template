module Main

open System

[<EntryPoint>]
let main argv =
    printfn "Enter the first number: "
    let x = Int32.Parse(Console.ReadLine())

    printfn "Enter the second number: "
    let y = Int32.Parse(Console.ReadLine())

    let result = Add.add x y
    printfn "The sum of %d and %d is %d." x y result

    0 // return an integer exit code
