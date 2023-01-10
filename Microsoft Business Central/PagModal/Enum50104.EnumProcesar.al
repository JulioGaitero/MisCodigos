enum 50104 EnumProcesar implements InterfaceProcesar
{
    Extensible = true;

    value(0; ok)
    {
        Caption = 'Ok';
        Implementation = InterfaceProcesar = CodeOK;
    }
    value(1; ko)
    {
        Caption = 'ko';
        Implementation = InterfaceProcesar = CodeError;
    }
    value(2; borrar)
    {
        Caption = 'Borrar';
        Implementation = InterfaceProcesar = CodeBorrar;
    }
}
