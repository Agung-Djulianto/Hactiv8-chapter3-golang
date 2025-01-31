PGDMP                         {            test    15.2    15.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16553    test    DATABASE     {   CREATE DATABASE test WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Indonesia.1252';
    DROP DATABASE test;
                postgres    false            �            1259    16563    products    TABLE     �   CREATE TABLE public.products (
    id text NOT NULL,
    name character varying(255),
    price bigint,
    user_id text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
    DROP TABLE public.products;
       public         heap    postgres    false            �            1259    16554    users    TABLE     �   CREATE TABLE public.users (
    id text NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    role character varying(5),
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
    DROP TABLE public.users;
       public         heap    postgres    false            �          0    16563    products 
   TABLE DATA           T   COPY public.products (id, name, price, user_id, created_at, updated_at) FROM stdin;
    public          postgres    false    215   �       �          0    16554    users 
   TABLE DATA           R   COPY public.users (id, email, password, role, created_at, updated_at) FROM stdin;
    public          postgres    false    214   �       m           2606    16569    products products_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            postgres    false    215            i           2606    16562    users users_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key;
       public            postgres    false    214            k           2606    16560    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    214            n           2606    16570    products fk_users_products    FK CONSTRAINT     y   ALTER TABLE ONLY public.products
    ADD CONSTRAINT fk_users_products FOREIGN KEY (user_id) REFERENCES public.users(id);
 D   ALTER TABLE ONLY public.products DROP CONSTRAINT fk_users_products;
       public          postgres    false    214    3179    215            �     x����N1 �s�)�n� �γx)�VW�5Y���[oj�N���=�'p$I١6�0����,<���n}���tz�1�F�$�>���2L`���Q:�1;9
�wʻ�f�&|����"��UPm�9Cim�8���H��c��뱞{���𿲲�nE-��d߫�ĒS���:��}xV��z^����e����ZO������#��9���2��6��G:п"�w�]�V,eK?�wԝy3IX�x�-���Zq      �     x�}�IO�H�s�+��mT�6ג�db��,��R�����!ɯ��HИV��J�>���AlG��]d�(H4U�LZo�[zD���.T��f[�n��A�&Ϙ*�*쏤�8�w��g�;>[��^U<��W߻���Gd��Vup��� H�!Ү?�|�$��o���z�h%��T�hF$КRd,ؑVz�����m���x8��k�m��U6®W����_D�_�d�$�l�|
��}��ԗ���S�AK���,�	 eB��B"u��+�*�^5��R�ZF���uP>̇p�����nﷇP.�p|��Ψk�!�ݦh�ٴ��Y�s�i,q��DP�PFs�%OH��n��]��Wn7�`�_Rm6�:�Vwť\���G�)��������Tg�7�z�$`,`�ꏩ�9#ThU�C���m,P)M�T�DK��rݨ.� ?T�,Ϋļ���lu$��8�%}�_\��.FU�,�![_�k)[��ﰠ��O0aP6�?���ZP�� *���M`�il��-�O�F�����-��Cq�_��l��|�	��V�e~�_�3>]�s����*��NM�_�sڨ��z�8�4�c�� ����$�CXn��o��~d�.���p�(lxɢ{��Vӗ���i��|�����ш$�w[���k�1n��������|M=��� :X�5�@j���e�������4]��-Փ�Ot�̶G��s��0���h2�Q�sV�Z��ס��D�p?�;L�B��y޿���Z     