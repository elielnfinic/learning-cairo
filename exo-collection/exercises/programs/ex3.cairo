// Perform and log output of simple arithmetic operations
func simple_math() {
   // adding 13 +  14
   let x = 13 + 14;
   %{ print(f"13 + 14 = {ids.x}") %}


   // multiplying 3 * 6
   let y = 3 * 6;
   %{ print(f"3 * 6 = {ids.y}")%}

   // dividing 6 by 2
    let z = 6 / 2;
    %{ print(f"6 / 2 = {ids.z}")%}
   // dividing 70 by 2

    let t = 70 / 2;
    %{ print(f"70 / 2 = {ids.t}")%}
   // dividing 7 by 2
    let w = 7 / 2;
    %{ print(f"7 / 2 = {ids.w}")%}
    return ();
}
