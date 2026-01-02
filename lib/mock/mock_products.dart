import 'package:projeto_mini_ifood/models/product_model.dart';

final mockProducts = [
  ProductModel(
    id: "1",
    name: "Pizza Margherita",
    price: 44.90,
    imageUrl:
        "https://sabores-new.s3.amazonaws.com/public/2024/11/pizza-marguerita-1024x494.webp",
    descricao:
        "Molho de tomate artesanal, mussarela fresca e folhas de manjericão.",
    category: ProductCategory.pratos,
  ),
  ProductModel(
    id: "2",
    name: "Pizza Portuguesa",
    price: 45.99,
    imageUrl:
        "https://imgs.search.brave.com/C6MHIHOYuT-epIyVS1EWpd7G3h_SbHyiXPt3JkB0tWU/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzL2I0L2M0/LzAzL2I0YzQwMzY0/NGY2NmYwMmZjMmI2/YTU0Y2EwMTQ2NDEx/LmpwZw",
    descricao:
        "Presunto, ovos, cebola, azeitonas, mussarela e molho de tomate.",
    category: ProductCategory.pratos,
  ),
  ProductModel(
    id: "3",
    name: "Açaí",
    price: 15.99,
    imageUrl:
        "https://imgs.search.brave.com/0Bl6CZLFUrlfDHCh0nL_NgunWaVVdKzMRySNug57w0k/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvMTI5/Nzg2NDAwNy9waG90/by9icmF6aWxpYW4t/ZnJvemVuLWElQzMl/QTdhaS1iZXJyeS1p/Y2UtY3JlYW0tcHVy/cGxlLXBvdC1ib3gt/d2l0aC1mcnVpdHMt/b24td29vZGVuLWJh/Y2tncm91bmQtc3Vt/bWVyLmpwZz9zPTYx/Mng2MTImdz0wJms9/MjAmYz1MZTNTUVkx/QVJQRzhKNlR5bU5E/a3ZFZlktXy1Sa3k4/OUpiclNQa3lSelM4/PQ",
    descricao:
        "Açaí cremoso e gelado, servido com frutas frescas e acompanhamentos.",
    category: ProductCategory.sobremesa,
  ),
  ProductModel(
    id: "4",
    name: "Sorvete Napolitano",
    price: 16.99,
    imageUrl:
        "https://imgs.search.brave.com/HBh7NmI2lGHz1TZXl5HCbILS6jZo65aZsTemXr9lXQw/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9zdGF0/aWMuaXRkZy5jb20u/YnIvaW1hZ2VzLzY0/MC1hdXRvLzczNjNl/NjFkMWUyY2FiNzdk/ZTdiMTk3MmM0NGE0/Nzc0L3NodXR0ZXJz/dG9jay0yNDQ1MjQy/MDgxLmpwZw",
    descricao: "Sorvete clássico nos sabores chocolate, creme e morango.",
    category: ProductCategory.sobremesa,
  ),
  ProductModel(
    id: "5",
    name: "Pudim",
    price: 20.99,
    imageUrl:
        "https://imgs.search.brave.com/YvM2AxrzeDquMbyXrRT8NigYSufqHyLk5SwUdORPmsM/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9zdGF0/aWMudmVjdGVlenku/Y29tL3RpL2ZvdG9z/LWdyYXRpcy90Mi81/MDcyNDQ2LXB1ZGlt/LWRlLWNyZW1lLWRl/LWNhcmFtZWxvLWZv/dG8uanBn",
    descricao: "Pudim de leite condensado com calda de caramelo artesanal.",
    category: ProductCategory.doces,
  ),
  ProductModel(
    id: "6",
    name: "X-tudo",
    price: 16.00,
    imageUrl:
        "https://imgs.search.brave.com/1BMZtvw3S87QTMZqbd2JIaZfILRFCR8WopTUXiEcGaA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS1jZG4udHJpcGFk/dmlzb3IuY29tL21l/ZGlhL3Bob3RvLW8v/MGIvZWQvYzgvMTAv/eC10dWRvLmpwZw",
    descricao: "Hambúrguer completo com queijo, bacon, ovo, presunto e salada.",
    category: ProductCategory.lanches,
  ),
  ProductModel(
    id: "7",
    name: "X-salada",
    price: 14.99,
    imageUrl:
        "https://imgs.search.brave.com/qcOvqDVo1sYlnhwQiAgrZ6yoEfTqY21hLkFzggXEQlo/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9zMy1z/YS1lYXN0LTEuYW1h/em9uYXdzLmNvbS9k/ZWxpdmVyeW9uLXVw/bG9hZHMvcHJvZHVj/dHMvdGhlcGxhbmV0/dmFzc291cmFzLzE1/XzYxOTdiMTYxZTcy/ODIuanBn",
    descricao: "Hambúrguer, queijo, alface, tomate e molho especial da casa.",
    category: ProductCategory.lanches,
  ),
  ProductModel(
    id: "8",
    name: "Bolo de Chocolate",
    price: 18.20,
    imageUrl:
        "https://s2.glbimg.com/uTojDCa7vPcL5Kkr1l2bCjnYWE0=/0x0:500x400/984x0/smart/filters:strip_icc()/s.glbimg.com/po/rc/media/2012/06/13/17/16/11/810/bolo_de_chocolate_especial.jpg",
    descricao: "Bolo macio de chocolate com cobertura cremosa.",
    category: ProductCategory.doces,
  ),
  ProductModel(
    id: "9",
    name: "Esfihas Abertas",
    price: 5.99,
    imageUrl:
        "https://imgs.search.brave.com/aM5dyQGa1pK7FxeXsu5ZgjHaJ7cPHZQwkeiCW5Sutbg/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzE1LzA5LzY0LzIx/LzM2MF9GXzE1MDk2/NDIxNjlfa24xTFh4/VTJjUEdUQURrQWJO/aUs5cFQyQjY1b21J/V3kuanBn",
    descricao: "Esfihas abertas recheadas com carne temperada e especiarias.",
    category: ProductCategory.pratos,
  ),
  ProductModel(
    id: "10",
    name: "Marmitex",
    price: 39.99,
    imageUrl:
        "https://imgs.search.brave.com/hDtUDNT9_CSwZT-ER_vLg3kpysXx4WtNuuc8Rw01Pds/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWcu/ZnJlZXBpay5jb20v/cHJlbWl1bS1waG90/by9tYXJtaXRhLW1h/cm1pdGV4LW1lYWwt/dGFrZS1mb29kLWJv/eF83MDIxNi04MDkw/LmpwZz9zZW10PWFp/c19oeWJyaWQ",
    descricao: "Refeição completa com arroz, feijão, carne e acompanhamentos.",
    category: ProductCategory.pratos,
  ),
];
