{ This file was automatically created by Lazarus. Do not edit!
  This source is only used to compile and install
  the package tdbf_l 0.0.
}

unit tdbf_l; 

interface

uses
  Dbf, Dbf_Reg, LazarusPackageIntf; 

implementation

procedure Register; 
begin
  RegisterUnit('Dbf_Reg', @Dbf_Reg.Register); 
end; 

initialization
  RegisterPackage('tdbf_l', @Register)
end.
