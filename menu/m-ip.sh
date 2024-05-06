#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SYH� ��{x" ����������`D@ `�z����m��f�^��x[8ْ���B�M���d��OH�d��L@ѡ�4 � � �)�=Sє�P��G�mCh b4i��dɦ��p �4C@ LCF�   42  �D����T��eOF�M<�������ڏQ�h�CC�h4�!�A�)�OI�L����&F�Sğ�m&����&Hz��4�����Q�� !�I�S�$xT���S�I����mC#���hi�mC�4�4pp[�gA?q��s�g��eP}3yP~���;I��!�{�X�h'X+�FB���X�$�[��W�xR�̪ؐ�T聂�t�z����i~�+�w�4�k XIC��,�5�)�i���ls�>�4	�ڽ���5�� no5"�NܕY�j�5�$'c1#8�$��Kl�N(g/�$�wzv��W�$�WH��_`}l����������7��&�h�@�"B ���ٻ�
�"
�qhקB�acs��U[iJG�W�TnΖklh�z/���[���I-OoS��z���L���?�rqs<�C桀�3�/����XʣA�l�h ���nf��ɤ�A3�W+����>���Q�vP ����	����rG6�DIN���	����x�=$h a��=�s�G��7$�i��y��S�����!݅��phPv�W�ؼS��v���ycv���V����-6����7q�||���c6������z��w�h�޳����\Y^��ڮc��7��C˯"w:��§.a����û�a�,�s��[�_!�i�6�ݩ���i;sB�q���h�X�b���qe�m��k�2�q;R4z�^��<�l�1H�tv��#���m�����w����T¯x�#�����C�ۄƆ�166 m\*B����p%���"	��E jyԈ�MH^�&6�ȂI6r�c��Ȑ�4��l�@Q�3�;��� i�� 4o�~Rx���xh2��_WV�0�j�!�|Ҕ������C��p��:L(�fϟQf;t<X��ORZ3d�Gy�(}�M^��<��!T�`�n鈕AS����������{��0b|�E(�?���L���Å �Z�G����\��c��D��|���׎�dC��*4=J�Э
��r[꒣�:<|q_]A�AR����;	X���t��!�_�<���{����#��9hWUE�cF���y�Q��ఀ���n0�<�aL0�]�e3E$��c��؊`Bo0�8��ť����T~��]��)E�g��v�yx���_����zp	��,�7?}����}����	���!�{�WV���Y�
SY�;�\M�Ip��22��y�f
�Y����jJ��I�&C��Bj=Xƅ�Ri$�R���L�aƎH" o�L$(8 X"��žR%ҕ����l����]��O�|l���.��zn�t��O~8�9XeS��nH��TѮ�mn�S.����p ]�����v+&�F;�:�S�O��Q^/�N�05E�+�f�\����p�W.��Lՠ[\,�U�	S!	����"#�|���D'ޏ0q9�/9%��IBی��;L�������щ0�ZbҠ28�J��̤�@}G��4��o���v��_y���8,�y�!ׯI�=��U���D�,���;��f���b��)��<��/���?D������6l�kQ� ѐr��5��5��� �v`~�^ %\Kn=�2N"@���>�Xx�He�����1%(���8V�P����/�b=��HG�:��Ī���6 B��l�~KR�.x���$B��0k�ȗ!of/C�:gc�%S��s!h�]�8�� ��w=bK��3D��{<�	�vD�z��N7��.H_b�d����jW�fjtI��7��)w�=Acg��7e�m2��dNł6TOz$��!�������{f�C�B��)�������1I9{g���Ь��;��JPF�-Y��8��H ��� �1Q�v��%�P�`g6g���S��Y�P����, �^H���������߲�;.�,@�B����(��ڰ������������s�C8a.w 9�'V�@L�fw'�`(���[��\0Cjp	$�#s��H�12wL�� (���;o���%1�R�"
UA����$��77�/��}�nqp38Ǆ�kx���(�O�bOQ�҅���-�vF[�,0��2��������a�a�Ma��y����ݑ��m�5��y55�'��ה�Ȋ/S�� V�zI���%&TP��+棼�N q��Ӡ�Ȅ�c!���.�	g��v~�ȶ�s�6m;Ds�	oC��"�;؜ndY����8\�X���Vwu9_/N۶y��!JOώ���"�"�G�H���u`�:��ku�!�4�6	�=N�3��ۓ�B�l|�7�2�8k�FMAi�S0�[�K�K���0�iu�b�KA �U����9���/ds�w[�L>hT�\���j`o~����'��G.&�]�yԣ��\E��ڜ6p��C7�Hw��CA{Hc�̰/e�sʾ0-�C��Q{�Q�`NM���sl�`�Z��iSC��e#]�d0ѵ,!�a�� ڗ��An|*6�`*��w��b@[ڤ��7L2'&���I���fƷ|��`�q�6���!��v�8�ڬҁ�pY5�a�U����Eq��ѕ�7�j<��z;�8u:�M��!%��4N��Ӥ&���6�`�v>	��x�U���nu��	������hx� ,�y��MZ����Q����s@�b0	n�ێ,mm�C�	�<�4d�i� yV`� n��t';4��
�>�iC����-<��Ì���)�����W� �0���}D�W�QjP�?�ܑN$.�@