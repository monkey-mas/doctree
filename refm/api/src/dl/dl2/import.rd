dl �饤�֥��Τ���ι��٥륤�󥿡��ե��������󶡤���饤�֥��Ǥ���

�̾�� dl �饤�֥���Ȥ鷺���� dl/import �饤�֥���Ȥ��ޤ���

��ʻȤ����� [[lib:dl]] �⻲�Ȥ��Ƥ���������

=== ���٤ʻ���ˡ

==== �����������ؿ����Ϥ�����

�㤨��Ϳ����줿Ĺ�� len �� double ��������¤�׻�����ؿ�
  double sum(double *arry, int len);
�����ä��Ȥ��ޤ��������ƤӽФ��������ϰʲ��Τ褦�� [[m:Array#pack]] ����Ѥ��ޤ���

 require 'dl/import'
 module M
   extend DL::Importer
   dlload './libsum.so'
   extern 'double sum(double*, int)'
 end
 p M.sum([2.0, 3.0, 4.0].pack('d*'), 3)   #=> 9.0

�ޤ�Ϳ����줿ʸ��������� s (Ĺ��len)�γ����Ǥκǽ��ʸ���� buf �˥��ԡ�����ؿ�
  void first_char(char **s, char *buf, int len)
�����ä��Ȥ��ޤ��������ƤӽФ��ˤ�ʲ��Τ褦�� [[m:Array#pack]] ����Ѥ��ޤ���

 require 'dl/import'
 module M
   extend DL::Importer
   dlload './libstrfirst.so'
   extern 'void first_char(char **, char *, int)'
 end
 buf = '111'
 M.first_char(['Abc', 'Def', 'Ghi'].pack('p*'), buf, 3) 
 p buf  #=> 'ADG'

==== Ruby �Υ��֥������Ȥ򥳡���Хå����Ϥ�����

Ǥ�դΥ��饹�� Ruby ���֥������Ȥ򥳡���Хå����Ϥ��������� [[m:DL.#dlwrap]] ��Ȥä�
�ݥ���(����)���Ѵ����Ƥ���ؿ����Ϥ���������Хå������Ǹ����ᤷ�ޤ���

�㤨�� libc �� qsort ��Ȥä� Ruby �� Time ������򥽡��Ȥ���ˤϰʲ��Τ褦�ˤ��ޤ���

  require 'dl/import'
  module M 
    extend DL::Importer
    dlload "libc.so.6"
    QsortCallback = bind("void *qsort_callback(void*, void*)"){|a, b|
      a0 = DL.dlunwrap(a.ptr.to_i)
      b0 = DL.dlunwrap(b.ptr.to_i)
      a0 <=> b0
    }
    extern 'void qsort(void *, int, int, void *)'
  end

  buff =  [Time.at(1), Time.now, Time.at(100), Time.at(10)]
  a = buff.map{|t| DL.dlwrap(t)}.pack('l!*')
  M.qsort(a, buff.size, DL::SIZEOF_VOIDP, M::QsortCallback)
  p a.unpack('l!*').map{|t| DL.dlunwrap(t).to_i }             #=> [1, 10, 100, 1241603848]