codeunit 50111 CodeNoti
{

    trigger OnRun()
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
