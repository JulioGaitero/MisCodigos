page 50137 InicioRepaso
{
    ApplicationArea = All;
    UsageCategory = None;
    PageType = Card;
    SourceTable = UsuariosTabla;
    RefreshOnActivate = true;
    DataCaptionExpression = Rec.Nombre + ' ' + Rec."Primer Apellido" + ' ' + Rec."Segundo Apellido";

    layout
    {
        area(content)
        {
            group(Trabajador)
            {
                field(Nombre; Rec.Nombre)
                {
                    ToolTip = 'Specifies the value of the Nombre field.';

                }
                field("Primer Apellido"; Rec."Primer Apellido")
                {
                    ToolTip = 'Specifies the value of the Primer Apellido field.';
                }
                field("Segundo Apellido"; Rec."Segundo Apellido")
                {
                    ToolTip = 'Specifies the value of the Segundo Apellido field.';
                }
                field("Telefono Fijo"; Rec."Telefono Fijo")
                {
                    ToolTip = 'Specifies the value of the Telefono Fijo field.';
                }
                field("Telefono Movil"; Rec."Telefono Movil")
                {
                    ToolTip = 'Specifies the value of the Telefono Movil field.';
                }
                field(DNI; Rec.DNI)
                {
                    ToolTip = 'Specifies the value of the DNI field.';
                }
                field("Fecha Nacimiento"; Rec."Fecha Nacimiento")
                {
                    ToolTip = 'Specifies the value of the Fecha Nacimiento field.';
                }
                field(Pais; Rec.Pais)
                {
                    ToolTip = 'Specifies the value of the Pais field.';
                }
                field(Direccion; Rec.Direccion)
                {
                    ToolTip = 'Specifies the value of the Direccion field.';
                }
                field(Provincia; Rec.Provincia)
                {
                    ToolTip = 'Specifies the value of the Provincia field.';
                }
                field(Categoria; Rec.Categoria)
                {
                    ToolTip = 'Specifies the value of the Categoria field.';
                }
                field(Foto; Rec.Foto)
                {
                    ToolTip = 'Specifies the value of the Foto field.';
                }
                field(Turno; Rec.Turno)
                {
                    ToolTip = 'Specifies the value of the Turno field.';
                }
            }

            group(Tareas)
            {
                part(TareasPart; Tareas)
                {
                    SubPageLink = Usuario = field(DNI);

                }

            }

        }

        area(FactBoxes)
        {

            part(Perfil; FotoPerfil)
            {
                ApplicationArea = All;
                Caption = 'Perfil';
                SubPageLink = DNI = field(DNI);

            }

            part(CueTareas; CueTareas)
            {
                Caption = 'Numero Tareas';
                SubPageLink = Usuario = field(DNI);
                //SubPageView = where(Usuario = field());
            }

            part(turnomanana; "Turno Mañana")
            {
                Caption = 'Turno Mañanas';
                SubPageView = where(Turno = const(Mañana));

            }

            part(turnoTarde; TurnoTarde)
            {
                Caption = 'Turno Tardes';
                SubPageView = where(Turno = const(Tarde));
            }

            part(TurnoNoches; TurnoNoches)
            {
                Caption = 'Turno Noches';
                SubPageView = where(Turno = const(Noche));
            }

            part(TurnoLibre; TurnoLibre)
            {
                Caption = 'Turno Libre';
                SubPageView = where(Turno = const(Libre));
            }

        }

    }

    actions
    {
        area(Processing)
        {
            action("Foto Perfil")
            {
                ApplicationArea = All;
                Image = User;

                trigger OnAction()
                begin
                    Rec.CambiarFotoP();
                end;
            }
            action("Configurar Extension")
            {
                ApplicationArea = All;
                Image = ServiceSetup;

                trigger OnAction()
                var
                    paginaConfiguracion: Page 50147;
                begin
                    paginaConfiguracion.RunModal();
                end;
            }
            action("Lista Usuarios")
            {
                ApplicationArea = All;
                Image = Users;
                trigger OnAction()
                var
                    paginaUsuarios: page 50148;
                begin
                    paginaUsuarios.Run();
                end;
            }
        }
        area(Promoted)
        {
            group("Seminar Room")
            {
                Image = Setup;
                actionref(FotoPerfil; "Foto Perfil")
                {

                }
                actionref(configurarExtension; "Configurar Extension")
                {

                }

            }
            actionref(listaUsuarios; "Lista Usuarios")
            {

            }
        }

    }

}


