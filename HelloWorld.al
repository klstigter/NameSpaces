// Welcome to your new AL extension.
// Remember that object names and IDs should be unique across all extensions.
// AL snippets start with t*, like tpageext - give them a try and happy coding!

/// <summary>
/// PageExtension CustomerListExt (ID 50100) extends Record Customer List.
/// </summary>
pageextension 50100 CustomerListExt extends "Customer List"
{
    actions
    {

        addbefore("&Customer")

        {
            action(ActionName)
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedIsBig = true;
                PromotedCategory = Process;
                Caption = 'try namespaces';

                trigger OnAction()
                var
                    cu: Codeunit TestNamespace;
                begin
                    cu.CallHelloWorld();
                end;
            }


        }

    }
}