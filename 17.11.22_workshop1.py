# Kullanıcı ders sayısını belirtecek
lessonCount = int(input("Kaç adet ders sayısı gireceksiniz?"))

# Girilen ders sayısı kadar 2 adet soru sorulacak
# (1.ders için vize notu giriniz. 1.ders için final notu giriniz. )

passedExams = 0
failedExams = 0

for i in range(lessonCount):
    lessonExam1 = float(input(f"{i+1}. ders için vize notunuzu giriniz."))
    lessonExam2 = float(input(f"{i+1}. ders için vize notunuzu giriniz."))
    totalExamNote = (lessonExam1 * 0.4) + (lessonExam2 *0.6)
    if totalExamNote >= 50:
        passedExams += 1
    else:
        failedExams += 1
print(f"{passedExams} adet dersten geçtiniz. {failedExams} dersten kaldınız.")