page 50046 EMMatrizCategoriaClientePS
{
    ApplicationArea = All;
    Caption = 'Matriz De Categorias de Clientes y Puntos de Servicios';
    PageType = List;
    SourceTable = EMTablaCategoriaClientePS;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(CodCliente; Rec.CodCliente)
                {
                    //ToolTip = 'Specifies the value of the CodCliente field.';
                }

                field("Nombre Cliente"; Rec."Nombre Cliente")
                {
                    //ToolTip = 'Specifies the value of the Nombre Cliente field.';
                }

                field(RUC; Rec.RUC)
                {
                    // ToolTip = 'Specifies the value of the RUC field.';
                }

                field(Tipo; Rec.Tipo)
                {
                    //ToolTip = 'Specifies the value of the Tipo field.';
                }

                field("Categoría"; Rec."Categoría")
                {
                    //ToolTip = 'Specifies the value of the Categoría field.';
                }

                field("Fecha Creacion"; Rec.SystemCreatedAt)
                {
                    //ToolTip = 'Specifies the value of the SystemCreatedAt field.';
                }

                field("FechaModificacion"; Rec.SystemModifiedAt)
                {
                    // ToolTip = 'Specifies the value of the SystemModifiedAt field.';
                }
            }
        }
    }
}
