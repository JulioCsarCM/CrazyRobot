import 'package:app_test/home/APP_MOBILE/user.dart';

const DUMMY_USERS = {
  '1': User(
      id: '1',
      name: 'Admin1-Maria Lua',
      descricao: 'marialua@gmail.org.br',
      avatarUrl:
          'https://thumbs.dreamstime.com/b/vector-illustration-nurse-avatar-icon-perfect-template-medical-design-188427431.jpg'),
  '2': User(
      id: '2',
      name: 'Admin2-Júlio César',
      descricao: 'jul10c3s4rCM@crazymachine.s.i.edu.br',
      avatarUrl:
          'https://upload.wikimedia.org/wikipedia/commons/5/54/Mamonas1.jpg'),
  '3': User(
      id: '3',
      name: 'Admin3-Crazy-Robot',
      descricao: 'crazyrobot@machinem4ster.com',
      avatarUrl:
          'https://1.bp.blogspot.com/-OHQw-TkR2aQ/YH9hvdapAzI/AAAAAAAAAEs/wy1G8y-w14E8lp5s0E9-XkTKTHbBJKi1ACLcBGAsYHQ/s225/assistente.jpeg'),
  '4': User(
      id: '4',
      name: 'Produto1:Exemplo:CaixaXYZ',
      descricao: 'Chegou: 1/4/2023, Saída:5/4/2023 (1unidade)',
      avatarUrl:
          'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjxLwnZSBdrYpfrZHzcJpqbO1P7KSPUZeQTxEQAnGlxjSx0PzTNzm9whq6_2tHxNqYbKMvmbZbxHSTGlUknTm9yrf46uEzxyYDrHwEj-6v9C8y97v0C09_oWi4KehqSlRwFnLynQWwurXV46n_4dAso5BF7R9X0Ts1PJvvsAUOAwS3sDj3yYr6wk-H_/s320/3-product1.jpg'),
  '5': User(
      id: '5',
      name: 'Produto2:Lampadas, El-Djinn',
      descricao: 'Chegou: 2/4/2023, Saída:6/4/2023 (66unidade)',
      avatarUrl:
          'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi44pMr7OQK5Jvuyp2dN5vIwQuCyNpZbEutsbfw-AElXXAvEdAXOKcbx_SNafFPqKoa9WShMpV-bAqNaHPDRJ4dM_9gKulMtMKP-yYlgQoijiHpwDugJqSk5heBAxMQk1d0l_TfMBLd3EOmgUZhYpAIQ8nB4QKemFnZFcvKqDcpkd6h12hvaws-wUO-/s320/6-produtc4.png'),
  '6': User(
      id: '6',
      name: 'Pallets, Livros: English',
      descricao: 'Chegou: 3/4/2023, Saída:7/4/2023 (99unidade)',
      avatarUrl:
          'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiZo-qTM6mjj7GY2_o01-7fLNuVg9IlBECVYEP6-cRkiVoAkFJ3lbl54X3QybXgSRiKC3WJfa3BvOB5HvJb1KzE3Ok260YgOeAaHgSU80YC_fJUvU2GCSGAGBiesbvbD-x__2xVmaeZ2nrMCgn4y6D4v17Hxiyvs8MWm9uQQTfvwqXChCuqc6G5c8gg/s320/4-product2.png'),
  '7': User(
      id: '7',
      name: 'Presentes Natal, Papai Noel',
      descricao: 'Chegou: 3/4/2023, Saída:7/4/2023 (10unidade)',
      avatarUrl:
          'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgFiS86axEjzdaY2LjCRa-INYOaEBuaameHO7PsaS9vUFcuLrlUFMsLNjkbEzGJZmoAseGqXk3BdyktENiAJ3sbEA-Ai3jceakJmF1F3oT5ctchYbAK1r46RDLm5XzRMRrukMIsjQLd1TloxCN4v6YHbFpKPv5Fzhf9wPf1uNEDsZAu4YcDDELqCZHJ/s1600/7-product.jpg'),
  '8': User(
      id: '8',
      name: 'Produtos: Alimenticios',
      descricao: 'Chegou: 5/4/2023, Saída:10/4/2023 (15unidade)',
      avatarUrl:
          'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEj-qJ4ckTIYwoV0m4jhIb_iFhtQgZ_WK0m_KO6tA-L6yeABBhUQ1J9458vtZvkNg2mWFkD6NOQutqqT5QbGreTSyU2oM32_KdhP_9YIQrzyE8Lcrf8Bne1QQxzAqVO14hVH8EsjZDX9WxbKBx8MpfuKm3M1MadSvjG9G3oe7SBNHfSdXDZ4e9gvJalX/s1600/8-product.jpg'),
  '9': User(
      id: '8',
      name: 'Apostilas: Teoria Musical vol1 e vol2',
      descricao: 'Chegou: 15/4/2023, Saída:18/4/2023 (77unidade)',
      avatarUrl:
          'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgyDQGM_i4CiqxlOD3c4iDxE_ZrrXcmB7aN0zeAUwkB6WqsGelQO8RzYNw1bIItA5J7y-3BUmBtEyuipU6-oMJXPiaFOBCjSzzj3UcxUabcnqdkkYgyz3ngQpnC3QTFPJM-i3T66AW2hfshZE6Z2nna6ywo-6uVyVQFphkbMOROHTcMXKYpARTFzL0N/s320/5-produtc3.png'),
  '10': User(
      id: '8',
      name: 'Presentes Ano Novo(2024)',
      descricao: 'Chegou: 20/4/2023, Saída:31/12/2023 (666unidade)',
      avatarUrl:
          'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEggagRcDKa2KjFwkf6TkomZeT3xoXc4-zG6hHb7FfRgGDawPTR_pEm1Cc5AcSfVRJ8xRmvkNzjOy02R6xG1aijXXp9GRXRUZ9nQ6AfjIaJDo8y9H3pu074Dw7iPebfAhoDrLNKRuQURP9O9_Yim1VmmRcVRfloCHY4Y8s734hdniuAj_hyl8DdUxJRz/s320/9-product.png'),
};
