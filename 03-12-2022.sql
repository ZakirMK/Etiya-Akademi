-- Onaylanmamış ödemeleri listeleyiniz.
select od.id "Sipariş Numarası" from order_details od
left join orders o on od.order_id = o.id
where od.order_id is null

-- En az 2 farklı ülkede adresi olan kullanıcıları listeleyiniz.
select cu.name "Ad", cu.surname "Soyad", count(cu.name) from customers cu
inner join addresses ad on cu.id = ad.customer_id
inner join countries co on ad.country_id = co.id
group by cu.name, cu.surname 
having count(cu.name) >= 2;

-- EN az 2 farklı şehirde adresi olan ve bu adreslere en az 1 adet sipariş vermiş kullanıcıları listeleyiniz.
select cu.name "Ad", cu.surname "Soyad", count (cu.name) "Farklı şehirlerden sipariş verme sayısı" from order_details od
inner join orders o on od.order_id = o.id
inner join customers cu on o.id = cu.id
inner join addresses ad on cu.id = ad.customer_id
inner join streets st on ad.street_id = st.id
inner join districts di on st.district_id = di.id
inner join cities ci on di.city_id = ci.id
group by cu.name, cu.surname
having count(ci.name) >= 2

-- Eklenmiş ancak hiç bir siparişte kullanılmamış adresleri listeleyiniz.
select ad.title "Adres İsmi", st.name "Cadde", d.name"Mahalle", ci.name"Şehir", co.name"Ülke" from order_details od
left join orders o on od.order_id = o.id
left join customers cu on o.id = cu.id
left join addresses ad on cu.id = ad.customer_id
left join streets st on ad.street_id = st.id
left join districts d on st.district_id = d.id
left join cities ci on d.city_id = ci.id
left join countries co on ci.country_id = co.id
where od.order_id is null
