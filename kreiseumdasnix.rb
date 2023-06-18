ekwipuneczek = ["zielona roślinka lecznicza"]
pinionszki = 100

def sklep (pinionszki2, ekwipuneczek2)

  while true

    puts "Kcesz coś kupić?"

        sklepiowarz = gets.chomp

      if sklepiowarz.chomp == "tak"

          sklep_rzeczy = File.read("sklepix.txt").split("\n")
          puts sklep_rzeczy

              puts "To masz zamiar coś kupić, czy się tak patrzać tylko? Co kcesz?"

          kupiowarz = gets.chomp

          if kupiowarz.include? "zbroja"

                ekwipuneczek2 << "zbroja z (żywych) rybiczków, które Cię kochają"
                      pinionszki2 = pinionszki2 - 30

                elsif kupiowarz.include? "eliksir"

                  ekwipuneczek2 << "eliksir zwinności kitka"
                      pinionszki2 = pinionszki2 - 10

                  elsif kupiowarz.include? "miecz"

                    ekwipuneczek2 << "miecz z dziwnymi napisami z nixa"
                    pinionszki2 = pinionszki2 - 20
          end

       else sklepiowarz.chomp == "nie" or kupiowarz.chomp == "nie"

        break

      end
          for rzecz in ekwipuneczek2
            puts rzecz
          end

    puts "A pokasz mje stan konta po sklepie: #{pinionszki2}"

  end

end


while true

  puts "Dzie kcesz kierwa leźć?"

  giereczkowacz = gets.chomp

  puts giereczkowacz.downcase!

  if giereczkowacz.chomp == "sklep"

    sklep(pinionszki2, ekwipuneczek2)

          for rzeczułka in ekwipuneczek
            puts rzeczułka
          end

    puts "A pinionszków masz tyle #{pinionszki}"

  else

    puts "Na razie możesz iść tylko do sklepu, przykro mje"

  end

end