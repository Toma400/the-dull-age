ekwipuneczek = ["zielona roślinka lecznicza"]
pinionszki = 100

  def sklep (ekwipuneczek2, pinionszki2)

  while true

    puts "Kcesz coś kupić?"

        sklepiowarz = gets.chomp

      if sklepiowarz.chomp == "tak"

          sklep_rzeczy = File.read("sklepix.txt").split("\n")
          puts sklep_rzeczy

              puts "To masz zamiar coś kupić, czy się tak patrzać tylko? Co kcesz?"

          kupiowarz = gets.chomp.to_i

          if kupiowarz == 1

            puts "Kupiono #{sklep_rzeczy[0]}"

                ekwipuneczek2 << "zbroja z (żywych) rybiczków, które Cię kochają"
                      pinionszki2 = pinionszki2 - 30

          elsif kupiowarz == 2

            puts "Kupiono #{sklep_rzeczy[1]}"

                  ekwipuneczek2 << "eliksir zwinności kitka"
                      pinionszki2 = pinionszki2 - 10

          elsif kupiowarz == 3

            puts "Kupiono #{sklep_rzeczy[2]}"

                    ekwipuneczek2 << "miecz z dziwnymi napisami z nixa"
                    pinionszki2 = pinionszki2 - 20
          end

       else sklepiowarz.chomp == "nie" or kupiowarz.chomp == "nie"

        break

      end
          for rzecz in ekwipuneczek2
            puts rzecz
          end

    return pinionszki2

  end

end


while true

  puts "Dzie kcesz kierwa leźć?"

  giereczkowacz = gets.chomp

  puts giereczkowacz.downcase!

  if giereczkowacz.chomp == "sklep"

    sklep(ekwipuneczek, pinionszki)

          for rzeczułka in ekwipuneczek
            puts rzeczułka
          end

    pinionszki = sklep(ekwipuneczek, pinionszki)

    puts "A pinionszków masz tyle #{pinionszki}"

  else

    puts "Na razie możesz iść tylko do sklepu, przykro mje"

  end

end