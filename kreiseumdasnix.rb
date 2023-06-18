ekwipuneczek = ["zielona roślinka lecznicza"]
pinionszki = 100

def sklep (ekwipuneczek = [], pinionszki = 100)

  while true

    puts "Kcesz coś kupić?"

        sklepiowarz = gets.chomp

      if sklepiowarz.chomp == "tak"

          sklep_rzeczy = File.read("sklepix.txt").split("\n")
          puts sklep_rzeczy

              puts "To masz zamiar coś kupić, czy się tak patrzać tylko? Co kcesz?"

          kupiowarz = gets.chomp

          if kupiowarz.include? "zbroja"

                ekwipuneczek << "zbroja z (żywych) rybiczków, które Cię kochają"
                      pinionszki = pinionszki - 30

                elsif kupiowarz.include? "eliksir"

                  ekwipuneczek << "eliksir zwinności kitka"
                      pinionszki = pinionszki - 10

                  elsif kupiowarz.include? "miecz"

                    ekwipuneczek << "miecz z dziwnymi napisami z nixa"
                       pinionszki = pinionszki - 20
          end

       else sklepiowarz.chomp == "nie" or kupiowarz.chomp == "nie"

        break

      end
          for rzecz in ekwipuneczek
            puts rzecz
          end

    puts "A pokasz mje stan konta po sklepie: #{pinionszki}"

  end

end


while true

  puts "Dzie kcesz kierwa leźć?"

  giereczkowacz = gets.chomp

  puts giereczkowacz.downcase!

  if giereczkowacz.chomp == "sklep"

    puts sklep()

    ekwipuneczek << sklep(ekwipuneczek)

    puts pinionszki = pinionszki - sklep(pinionszki).to_i

    for rzeczułka in ekwipuneczek
      puts rzeczułka
    end

    puts "A pinionszków masz tyle #{pinionszki}"

  else

    puts "Na razie możesz iść tylko do sklepu, przykro mje"

  end

end