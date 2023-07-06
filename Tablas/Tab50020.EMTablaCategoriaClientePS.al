table 50020 EMTablaCategoriaClientePS
{
    Caption = 'EMTablaCategoriaClientePS';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; CodCliente; Code[20])
        {
            Caption = 'CodCliente';
            DataClassification = ToBeClassified;
        }
        field(2; RUC; Code[50])
        {
            Caption = 'RUC';
            DataClassification = ToBeClassified;
        }
        field(3; "Nombre Cliente"; Text[200])
        {
            Caption = 'Nombre Cliente';
            DataClassification = ToBeClassified;
        }
        field(4; "Categoría"; Enum EMMatrizCategorias)
        {
            Caption = 'Categoría';
            DataClassification = ToBeClassified;
        }
        field(5; Tipo; Enum EMTipoClienteCat)
        {
            Caption = 'Tipo';
            DataClassification = ToBeClassified;
        }
        field(6; ID; Integer)
        {
            Caption = 'ID';
            DataClassification = ToBeClassified;
        }


    }
    keys
    {
        key(PK; ID)
        {
            Clustered = true;
        }
    }
}
