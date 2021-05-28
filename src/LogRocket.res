type request = {
    mutable body: Js.Null.t<unit>,
    mutable url: string,
}

type requestSanitizer = request => request

type network = {
    requestSanitizer,
}

type options = {
    network,
}

@module("logrocket") external init: string => unit = "init"
@module("logrocket") external identify: (string, 'a) => unit = "identify"
@module("logrocket") external captureException: (Js.Exn.t) => unit = "captureException"
@module("logrocket") external captureMessage: (string) => unit = "captureMessage"
@module("logrocket") external captureExceptionWithData: (Js.Exn.t, 'a) => unit = "captureException"
@module("logrocket") external captureMessageWithData: (string, 'a) => unit = "captureMessage"
@module("logrocket") external initWithOptions: (string, options) => unit = "init"
