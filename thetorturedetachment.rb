rzeczy_czarwonicy = ["magiczna roślinka bez nazwy", "karty tarota", "figureczka boginki"]

while true

    puts "Idziesz sobie zbierać czarwonicowe rzeczy, cu tam osóbka czarownicowa znalazła?"
    puts "Albo sobie możesz dać zapisz, albo wyjdź i szok, zapiszesz albo wyjdziesz"
    puts "Ale nie jednocześnie, proszu"
    puts "A teraz to jeszcze wczytać możesz, widzisz"

  czarwonica = gets

      puts czarwonica.downcase!

  if czarwonica.chomp == "wyjdź"

    break

      elsif czarwonica.chomp == "zapisz"

        File.write("rzeczczarwonicy.txt", rzeczy_czarwonicy)

      elsif czarwonica.chomp == "wczytaj"

        rzeczy_czarwonicy = File.read("rzeczczarwonicy.txt").split

            else

              rzeczy_czarwonicy << czarwonica

  end

    puts "Nu i jakie ładen rzeczy ma nasza osóbka czarownicowa teraz?"

      for rzeczy in rzeczy_czarwonicy
        puts rzeczy
      end

end