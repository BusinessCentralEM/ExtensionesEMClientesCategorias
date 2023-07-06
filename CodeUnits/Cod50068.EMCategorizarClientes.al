codeunit 50068 EMCategorizarClientes
{
    TableNo = "Cust. Ledger Entry";
    Permissions = tabledata EMTablaCategoriaClientePS = RIMD;


    trigger OnRun()
    begin
        CargarClientes();

        //    CargarPS(); 
    end;

    procedure CargarClientes()
    VAR
        TablaCustomer: Record Customer;
        TablaCatClientes: Record EMTablaCategoriaClientePS;
    begin

        repeat
            TablaCustomer.Reset();
            TablaCatClientes.SetRange(CodCliente, TablaCustomer."Bill-to Customer No.");
            if not TablaCatClientes.FindSet() then begin


                TablaCatClientes.Init();
                TablaCatClientes.Tipo := TablaCatClientes.Tipo::CTE;
                TablaCatClientes."Nombre Cliente" := TablaCustomer.Name;
                //TablaCatClientes.CodCliente := TablaCustomer."Bill-to Customer No.";
                //  TablaCatClientes.RUC := TablaCustomer."VAT Registration No.";


                TablaCatClientes.Insert();


            end;

        until TablaCustomer.Next() = 0;


    end;

    procedure CargarPS()
    BEGIN

    END;



}
