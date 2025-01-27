PGDMP                         x            store    12.4    12.4                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16667    store    DATABASE     �   CREATE DATABASE store WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Russian_Russia.1251' LC_CTYPE = 'Russian_Russia.1251';
    DROP DATABASE store;
                postgres    false            �            1259    16824    order    TABLE     c   CREATE TABLE public."order" (
    id integer NOT NULL,
    created_at date,
    updated_at date
);
    DROP TABLE public."order";
       public         heap    postgres    false            �            1259    16848    order_id_seq    SEQUENCE     �   ALTER TABLE public."order" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.order_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    203            �            1259    16829    position    TABLE     �   CREATE TABLE public."position" (
    id integer NOT NULL,
    product_id integer,
    quantity integer,
    order_id integer
);
    DROP TABLE public."position";
       public         heap    postgres    false            �            1259    16846    positions_id_seq    SEQUENCE     �   ALTER TABLE public."position" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.positions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    204            �            1259    16816    product    TABLE     �   CREATE TABLE public.product (
    id integer NOT NULL,
    name character varying,
    price integer,
    available_quantity integer
);
    DROP TABLE public.product;
       public         heap    postgres    false            �            1259    16844    product_id_seq    SEQUENCE     �   ALTER TABLE public.product ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    202                      0    16824    order 
   TABLE DATA           =   COPY public."order" (id, created_at, updated_at) FROM stdin;
    public          postgres    false    203   �                 0    16829    position 
   TABLE DATA           H   COPY public."position" (id, product_id, quantity, order_id) FROM stdin;
    public          postgres    false    204   �                 0    16816    product 
   TABLE DATA           F   COPY public.product (id, name, price, available_quantity) FROM stdin;
    public          postgres    false    202   "                  0    0    order_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.order_id_seq', 4, true);
          public          postgres    false    207                       0    0    positions_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.positions_id_seq', 6, true);
          public          postgres    false    206                       0    0    product_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.product_id_seq', 3, true);
          public          postgres    false    205            �
           2606    16828    order order_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public."order"
    ADD CONSTRAINT order_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."order" DROP CONSTRAINT order_pkey;
       public            postgres    false    203            �
           2606    16823    product product_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public            postgres    false    202            �
           2606    16855    position order_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."position"
    ADD CONSTRAINT order_id FOREIGN KEY (order_id) REFERENCES public."order"(id) ON DELETE CASCADE NOT VALID;
 =   ALTER TABLE ONLY public."position" DROP CONSTRAINT order_id;
       public          postgres    false    204    203    2703            �
           2606    16850    position product_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."position"
    ADD CONSTRAINT product_id FOREIGN KEY (product_id) REFERENCES public.product(id) ON DELETE CASCADE NOT VALID;
 ?   ALTER TABLE ONLY public."position" DROP CONSTRAINT product_id;
       public          postgres    false    202    2701    204                  x�3�4202�5��5�Dbr������� ��	         $   x�3�4�44�4�21�8M��8�9��=... DG         ,   x�3�,�/I,I�442�466�2�L,(�I�424�q��qqq �vQ     