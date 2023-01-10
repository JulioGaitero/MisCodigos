codeunit 50110 codeNotificacion
{

    procedure abrirConfiguracion(notificacion: Notification)

    begin
        Page.Run(50147);
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Role Center Notification Mgt.", 'OnBeforeShowNotifications', '', true, true)]
    local procedure MyProcedure()

    var
        notificacion: Notification;
        notificacionEtiqueta: Label 'Notificacion de seguridad - Revisa esta configuracion por favor:';
        notificacionLink: Label 'Configuración';

    begin
        notificacion.Message(notificacionEtiqueta);
        notificacion.AddAction(notificacionLink, Codeunit::codeNotificacion, 'abrirConfiguracion');
        notificacion.Send();
    end;

}


