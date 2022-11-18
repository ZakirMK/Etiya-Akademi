

#exception
try:
    examNote = float(input("Lütfen sınav notunuzu giriniz: "))
    print(examNote)
except ValueError:
    print("Deneme123")
except ZeroDivisionError:
    print("Hiçbir sayı 0'a bölünemez.")
except:
    print("Doğru bir girdi girmediniz.")
finally:
    print("Try except bloğu sona erdi.")