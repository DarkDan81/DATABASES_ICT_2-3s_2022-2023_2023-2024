PGDMP  7    9                 |            opt_base    16.1    16.1 3    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                        1262    16436    opt_base    DATABASE     |   CREATE DATABASE opt_base WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE opt_base;
                postgres    false                        2615    16437    opt    SCHEMA        CREATE SCHEMA opt;
    DROP SCHEMA opt;
                postgres    false            �            1259    16468    База    TABLE     r  CREATE TABLE opt."База" (
    "КодБазы" character varying(10) NOT NULL,
    "КодПоставки" character varying(10) NOT NULL,
    "КодЗаказа" character varying(10) NOT NULL,
    "Адрес" character varying(50) NOT NULL,
    "Реквизиты" character varying(50) NOT NULL,
    "ЗапасТовара" character varying(20) NOT NULL
);
    DROP TABLE opt."База";
       opt         heap    postgres    false    6            �            1259    16483 
   Заказ    TABLE     �  CREATE TABLE opt."Заказ" (
    "КодЗаказа" character varying(10) NOT NULL,
    "КодПокупателя" character varying(10) NOT NULL,
    "КодМенеджера" character varying(10) NOT NULL,
    "ДатаЗаказа" date NOT NULL,
    "НомерДоговораЗаказа" character varying(10) NOT NULL,
    "СтатусЗаказа" character varying(20) NOT NULL
);
    DROP TABLE opt."Заказ";
       opt         heap    postgres    false    6            �            1259    16473    Менеджер    TABLE     *  CREATE TABLE opt."Менеджер" (
    "КодМенеджера" character varying(10) NOT NULL,
    "ТабельныйНомер" character varying(40) NOT NULL,
    "ПаспортныеДанные" character varying(20) NOT NULL,
    "Должность" character varying(30) NOT NULL
);
 #   DROP TABLE opt."Менеджер";
       opt         heap    postgres    false    6            �            1259    16488    Покупатель    TABLE       CREATE TABLE opt."Покупатель" (
    "КодПокупателя" character varying(10) NOT NULL,
    "Название" character varying(50) NOT NULL,
    "Реквизиты" character varying(50) NOT NULL,
    "Адрес" character varying(50) NOT NULL
);
 '   DROP TABLE opt."Покупатель";
       opt         heap    postgres    false    6            �            1259    16463    Поставка    TABLE     �  CREATE TABLE opt."Поставка" (
    "КодПоставки" character varying(10) NOT NULL,
    "КодПоставщика" character varying(10) NOT NULL,
    "КодМенеджера" character varying(10) NOT NULL,
    "СтатусПоставки" character varying(20) NOT NULL,
    "ДатаПоставки" date NOT NULL,
    "КодБазы" character varying(10) NOT NULL,
    "НомерДоговораПоставки" character varying(10) NOT NULL
);
 #   DROP TABLE opt."Поставка";
       opt         heap    postgres    false    6            �            1259    16453    Поставщик    TABLE       CREATE TABLE opt."Поставщик" (
    "КодПоставщика" character varying(10) NOT NULL,
    "Название" character varying(50) NOT NULL,
    "НомерСчета" character varying(50) NOT NULL,
    "Адрес" character varying(50) NOT NULL
);
 %   DROP TABLE opt."Поставщик";
       opt         heap    postgres    false    6            �            1259    16448    Производитель    TABLE       CREATE TABLE opt."Производитель" (
    "КодПроизводителя" character varying(10) NOT NULL,
    "Название" character varying(50) NOT NULL,
    "НомерСчета" character varying(50) NOT NULL,
    "Адрес" character varying(50) NOT NULL
);
 -   DROP TABLE opt."Производитель";
       opt         heap    postgres    false    6            �            1259    16478    Состав заказа    TABLE     �  CREATE TABLE opt."Состав заказа" (
    "КодСоставаЗаказа" character varying(10) NOT NULL,
    "КодЗаказа" character varying(10) NOT NULL,
    "КодТовара" character varying(10) NOT NULL,
    "КодСоставаПоставки" character varying(10) NOT NULL,
    "ЦенаТовара" integer NOT NULL,
    "КоличествоТовара" integer NOT NULL,
    "Примечание" character varying(50)
);
 ,   DROP TABLE opt."Состав заказа";
       opt         heap    postgres    false    6            �            1259    16458    Состав поставки    TABLE     �  CREATE TABLE opt."Состав поставки" (
    "КодСоставаПоставки" character varying(10) NOT NULL,
    "КодПоставки" character varying(10) NOT NULL,
    "КодТовара" character varying(10) NOT NULL,
    "ЦенаТовара" integer NOT NULL,
    "КоличествоТовара" integer NOT NULL,
    "СрокГодности" date NOT NULL,
    "Примечание" character varying(50),
    "ОстатокПоставки" integer NOT NULL
);
 0   DROP TABLE opt."Состав поставки";
       opt         heap    postgres    false    6            �            1259    16443 
   Товар    TABLE     ]  CREATE TABLE opt."Товар" (
    "КодТовара" character varying(10) NOT NULL,
    "КодПроизводителя" character varying(10) NOT NULL,
    "Название" character varying(50) NOT NULL,
    "ЕдиницаИзмерения" character varying(10) NOT NULL,
    "НомерПартии" character varying(30) NOT NULL
);
    DROP TABLE opt."Товар";
       opt         heap    postgres    false    6            �          0    16468    База 
   TABLE DATA           �   COPY opt."База" ("КодБазы", "КодПоставки", "КодЗаказа", "Адрес", "Реквизиты", "ЗапасТовара") FROM stdin;
    opt          postgres    false    221   �T       �          0    16483 
   Заказ 
   TABLE DATA           �   COPY opt."Заказ" ("КодЗаказа", "КодПокупателя", "КодМенеджера", "ДатаЗаказа", "НомерДоговораЗаказа", "СтатусЗаказа") FROM stdin;
    opt          postgres    false    224   U       �          0    16473    Менеджер 
   TABLE DATA           �   COPY opt."Менеджер" ("КодМенеджера", "ТабельныйНомер", "ПаспортныеДанные", "Должность") FROM stdin;
    opt          postgres    false    222   kU       �          0    16488    Покупатель 
   TABLE DATA           �   COPY opt."Покупатель" ("КодПокупателя", "Название", "Реквизиты", "Адрес") FROM stdin;
    opt          postgres    false    225   �U       �          0    16463    Поставка 
   TABLE DATA           �   COPY opt."Поставка" ("КодПоставки", "КодПоставщика", "КодМенеджера", "СтатусПоставки", "ДатаПоставки", "КодБазы", "НомерДоговораПоставки") FROM stdin;
    opt          postgres    false    220   qV       �          0    16453    Поставщик 
   TABLE DATA           �   COPY opt."Поставщик" ("КодПоставщика", "Название", "НомерСчета", "Адрес") FROM stdin;
    opt          postgres    false    218   �V       �          0    16448    Производитель 
   TABLE DATA           �   COPY opt."Производитель" ("КодПроизводителя", "Название", "НомерСчета", "Адрес") FROM stdin;
    opt          postgres    false    217   +W       �          0    16478    Состав заказа 
   TABLE DATA           �   COPY opt."Состав заказа" ("КодСоставаЗаказа", "КодЗаказа", "КодТовара", "КодСоставаПоставки", "ЦенаТовара", "КоличествоТовара", "Примечание") FROM stdin;
    opt          postgres    false    223   �W       �          0    16458    Состав поставки 
   TABLE DATA              COPY opt."Состав поставки" ("КодСоставаПоставки", "КодПоставки", "КодТовара", "ЦенаТовара", "КоличествоТовара", "СрокГодности", "Примечание", "ОстатокПоставки") FROM stdin;
    opt          postgres    false    219   �W       �          0    16443 
   Товар 
   TABLE DATA           �   COPY opt."Товар" ("КодТовара", "КодПроизводителя", "Название", "ЕдиницаИзмерения", "НомерПартии") FROM stdin;
    opt          postgres    false    216   X       M           2606    16472    База База_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY opt."База"
    ADD CONSTRAINT "База_pkey" PRIMARY KEY ("КодБазы");
 A   ALTER TABLE ONLY opt."База" DROP CONSTRAINT "База_pkey";
       opt            postgres    false    221            S           2606    16487    Заказ Заказ_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY opt."Заказ"
    ADD CONSTRAINT "Заказ_pkey" PRIMARY KEY ("КодЗаказа");
 E   ALTER TABLE ONLY opt."Заказ" DROP CONSTRAINT "Заказ_pkey";
       opt            postgres    false    224            >           2606    16494 2   Состав поставки Количество    CHECK CONSTRAINT     �   ALTER TABLE opt."Состав поставки"
    ADD CONSTRAINT "Количество" CHECK (("КоличествоТовара" > 0)) NOT VALID;
 X   ALTER TABLE opt."Состав поставки" DROP CONSTRAINT "Количество";
       opt          postgres    false    219    219            @           2606    16496 <   Состав заказа Количество товара     CHECK CONSTRAINT     �   ALTER TABLE opt."Состав заказа"
    ADD CONSTRAINT "Количество товара " CHECK (("КоличествоТовара" > 0)) NOT VALID;
 b   ALTER TABLE opt."Состав заказа" DROP CONSTRAINT "Количество товара ";
       opt          postgres    false    223    223            O           2606    16477 &   Менеджер Менеджер_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY opt."Менеджер"
    ADD CONSTRAINT "Менеджер_pkey" PRIMARY KEY ("КодМенеджера");
 Q   ALTER TABLE ONLY opt."Менеджер" DROP CONSTRAINT "Менеджер_pkey";
       opt            postgres    false    222            U           2606    16492 .   Покупатель Покупатель_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY opt."Покупатель"
    ADD CONSTRAINT "Покупатель_pkey" PRIMARY KEY ("КодПокупателя");
 Y   ALTER TABLE ONLY opt."Покупатель" DROP CONSTRAINT "Покупатель_pkey";
       opt            postgres    false    225            K           2606    16467 &   Поставка Поставка_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY opt."Поставка"
    ADD CONSTRAINT "Поставка_pkey" PRIMARY KEY ("КодПоставки");
 Q   ALTER TABLE ONLY opt."Поставка" DROP CONSTRAINT "Поставка_pkey";
       opt            postgres    false    220            G           2606    16457 *   Поставщик Поставщик_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY opt."Поставщик"
    ADD CONSTRAINT "Поставщик_pkey" PRIMARY KEY ("КодПоставщика");
 U   ALTER TABLE ONLY opt."Поставщик" DROP CONSTRAINT "Поставщик_pkey";
       opt            postgres    false    218            E           2606    16452 :   Производитель Производитель_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY opt."Производитель"
    ADD CONSTRAINT "Производитель_pkey" PRIMARY KEY ("КодПроизводителя");
 e   ALTER TABLE ONLY opt."Производитель" DROP CONSTRAINT "Производитель_pkey";
       opt            postgres    false    217            Q           2606    16482 8   Состав заказа Состав заказа_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY opt."Состав заказа"
    ADD CONSTRAINT "Состав заказа_pkey" PRIMARY KEY ("КодСоставаЗаказа");
 c   ALTER TABLE ONLY opt."Состав заказа" DROP CONSTRAINT "Состав заказа_pkey";
       opt            postgres    false    223            I           2606    16462 @   Состав поставки Состав поставки_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY opt."Состав поставки"
    ADD CONSTRAINT "Состав поставки_pkey" PRIMARY KEY ("КодСоставаПоставки");
 k   ALTER TABLE ONLY opt."Состав поставки" DROP CONSTRAINT "Состав поставки_pkey";
       opt            postgres    false    219            C           2606    16447    Товар Товар_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY opt."Товар"
    ADD CONSTRAINT "Товар_pkey" PRIMARY KEY ("КодТовара");
 E   ALTER TABLE ONLY opt."Товар" DROP CONSTRAINT "Товар_pkey";
       opt            postgres    false    216            ?           2606    16493 3   Состав поставки Цена товара    CHECK CONSTRAINT     �   ALTER TABLE opt."Состав поставки"
    ADD CONSTRAINT "Цена товара" CHECK (("ЦенаТовара" > 0)) NOT VALID;
 Y   ALTER TABLE opt."Состав поставки" DROP CONSTRAINT "Цена товара";
       opt          postgres    false    219    219            A           2606    16495 /   Состав заказа Цена товара    CHECK CONSTRAINT     �   ALTER TABLE opt."Состав заказа"
    ADD CONSTRAINT "Цена товара" CHECK (("ЦенаТовара" > 0)) NOT VALID;
 U   ALTER TABLE opt."Состав заказа" DROP CONSTRAINT "Цена товара";
       opt          postgres    false    223    223            [           2606    16507    База КодЗаказа    FK CONSTRAINT     �   ALTER TABLE ONLY opt."База"
    ADD CONSTRAINT "КодЗаказа" FOREIGN KEY ("КодЗаказа") REFERENCES opt."Заказ"("КодЗаказа") ON UPDATE RESTRICT ON DELETE RESTRICT NOT VALID;
 F   ALTER TABLE ONLY opt."База" DROP CONSTRAINT "КодЗаказа";
       opt          postgres    false    4691    221    224            ]           2606    16532 /   Состав заказа КодЗаказа_fk    FK CONSTRAINT     �   ALTER TABLE ONLY opt."Состав заказа"
    ADD CONSTRAINT "КодЗаказа_fk" FOREIGN KEY ("КодЗаказа") REFERENCES opt."Заказ"("КодЗаказа") ON UPDATE RESTRICT ON DELETE RESTRICT NOT VALID;
 Z   ALTER TABLE ONLY opt."Состав заказа" DROP CONSTRAINT "КодЗаказа_fk";
       opt          postgres    false    224    223    4691            `           2606    16517 #   Заказ КодМенеджера    FK CONSTRAINT     �   ALTER TABLE ONLY opt."Заказ"
    ADD CONSTRAINT "КодМенеджера" FOREIGN KEY ("КодМенеджера") REFERENCES opt."Менеджер"("КодМенеджера") ON UPDATE RESTRICT ON DELETE RESTRICT NOT VALID;
 N   ALTER TABLE ONLY opt."Заказ" DROP CONSTRAINT "КодМенеджера";
       opt          postgres    false    222    4687    224            Y           2606    16527 ,   Поставка КодМенеджера_fk    FK CONSTRAINT     �   ALTER TABLE ONLY opt."Поставка"
    ADD CONSTRAINT "КодМенеджера_fk" FOREIGN KEY ("КодМенеджера") REFERENCES opt."Менеджер"("КодМенеджера") NOT VALID;
 W   ALTER TABLE ONLY opt."Поставка" DROP CONSTRAINT "КодМенеджера_fk";
       opt          postgres    false    222    4687    220            a           2606    16512 %   Заказ КодПокупателя    FK CONSTRAINT     �   ALTER TABLE ONLY opt."Заказ"
    ADD CONSTRAINT "КодПокупателя" FOREIGN KEY ("КодПокупателя") REFERENCES opt."Покупатель"("КодПокупателя") ON UPDATE RESTRICT ON DELETE RESTRICT NOT VALID;
 P   ALTER TABLE ONLY opt."Заказ" DROP CONSTRAINT "КодПокупателя";
       opt          postgres    false    4693    225    224            \           2606    16502    База КодПоставки    FK CONSTRAINT     �   ALTER TABLE ONLY opt."База"
    ADD CONSTRAINT "КодПоставки" FOREIGN KEY ("КодПоставки") REFERENCES opt."Поставка"("КодПоставки") ON UPDATE RESTRICT ON DELETE RESTRICT NOT VALID;
 J   ALTER TABLE ONLY opt."База" DROP CONSTRAINT "КодПоставки";
       opt          postgres    false    4683    221    220            W           2606    16547 7   Состав поставки КодПоставки_fk    FK CONSTRAINT     �   ALTER TABLE ONLY opt."Состав поставки"
    ADD CONSTRAINT "КодПоставки_fk" FOREIGN KEY ("КодПоставки") REFERENCES opt."Поставка"("КодПоставки") ON UPDATE RESTRICT ON DELETE RESTRICT NOT VALID;
 b   ALTER TABLE ONLY opt."Состав поставки" DROP CONSTRAINT "КодПоставки_fk";
       opt          postgres    false    4683    220    219            Z           2606    16522 .   Поставка КодПоставщика_fk    FK CONSTRAINT     �   ALTER TABLE ONLY opt."Поставка"
    ADD CONSTRAINT "КодПоставщика_fk" FOREIGN KEY ("КодПоставщика") REFERENCES opt."Поставщик"("КодПоставщика") NOT VALID;
 Y   ALTER TABLE ONLY opt."Поставка" DROP CONSTRAINT "КодПоставщика_fk";
       opt          postgres    false    218    4679    220            V           2606    16557 .   Товар КодПроизводителя_fk    FK CONSTRAINT       ALTER TABLE ONLY opt."Товар"
    ADD CONSTRAINT "КодПроизводителя_fk" FOREIGN KEY ("КодПроизводителя") REFERENCES opt."Производитель"("КодПроизводителя") ON UPDATE RESTRICT ON DELETE RESTRICT NOT VALID;
 Y   ALTER TABLE ONLY opt."Товар" DROP CONSTRAINT "КодПроизводителя_fk";
       opt          postgres    false    216    217    4677            ^           2606    16542 >   Состав заказа КодСоставаПоставки    FK CONSTRAINT     (  ALTER TABLE ONLY opt."Состав заказа"
    ADD CONSTRAINT "КодСоставаПоставки" FOREIGN KEY ("КодСоставаПоставки") REFERENCES opt."Состав поставки"("КодСоставаПоставки") ON UPDATE RESTRICT ON DELETE RESTRICT NOT VALID;
 i   ALTER TABLE ONLY opt."Состав заказа" DROP CONSTRAINT "КодСоставаПоставки";
       opt          postgres    false    219    4681    223            _           2606    16537 /   Состав заказа КодТовара_fk    FK CONSTRAINT     �   ALTER TABLE ONLY opt."Состав заказа"
    ADD CONSTRAINT "КодТовара_fk" FOREIGN KEY ("КодТовара") REFERENCES opt."Товар"("КодТовара") ON UPDATE RESTRICT ON DELETE RESTRICT NOT VALID;
 Z   ALTER TABLE ONLY opt."Состав заказа" DROP CONSTRAINT "КодТовара_fk";
       opt          postgres    false    223    216    4675            X           2606    16552 3   Состав поставки КодТовара_fk    FK CONSTRAINT     �   ALTER TABLE ONLY opt."Состав поставки"
    ADD CONSTRAINT "КодТовара_fk" FOREIGN KEY ("КодТовара") REFERENCES opt."Товар"("КодТовара") ON UPDATE RESTRICT ON DELETE RESTRICT NOT VALID;
 ^   ALTER TABLE ONLY opt."Состав поставки" DROP CONSTRAINT "КодТовара_fk";
       opt          postgres    false    216    219    4675            �   P   x�3�4�s.l��za߅M@�_�؂�s/�U0222V�0�������j��8AM��\�	B�)H�)W� �-A      �   B   x�3�4B##c]]C# ��$���6^�w��®[��8����*���b�Ŧ;�b���� #9�      �   c   x�3�440�462P036�0���{�x˅m�^lP���b�����.��pa����6.#N#�F#S���/�Jn+���s��1z\\\ �G      �   �   x�Eͱ�0�ڞ�&@\��a&v

��"P�,�4F8+���������3#V���� ;ܱ`U<��D{U�''|���92X��*�#J�;�����`lE�sݏv.�ɀ�}D;��捑��WQ>x��Q]^      �   <   x�3�4�s/lP��xaׅ�6\�ra+����������H�'�Q2ň+F��� ���      �   ^   x�3�0�¦��]Xr�������\쿰(��b�]@z��Ŏ�.6�[�,��8/L󛀒�t/L����~ ��iD@��W� ��G�      �   Y   x�e��	�0 ��)�@H�q��t-m!	�p��_
v����F�i� <6�D�$n�����]�(���E�H�.�%�Ы���A�      �   "   x�3�4�@ 20����2�@c�H$F��� �1      �   6   x���  ��t������R/y5���dg��w&����j9琪�^ ML
1      �   =   x�3�4�0�¾��xׅ}
ƪ
z��f_�q��b��!�!�#��C�=... `�"
     