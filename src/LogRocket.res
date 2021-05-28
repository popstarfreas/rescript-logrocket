type request = {
    mutable body: Js.Null.t<unit>,
    mutable url: string,
}

type requestSanitizer = request => request

type network = {
    requestSanitizer,
}

type console = {
    isEnabled: bool,
}

type options = {
    network: option<network>,
    release: option<string>,
    console: option<console>,
}

type captureData<'a, 'b> = {
    tags: 'a,
    extra: 'b,
}

@module("logrocket") external init: string => unit = "init"
@module("logrocket") external initWithOptions: (string, options) => unit = "init"
@module("logrocket") external identify: (string, 'a) => unit = "identify"
@module("logrocket") external captureException: (Js.Exn.t) => unit = "captureException"
@module("logrocket") external captureMessage: (string) => unit = "captureMessage"
@module("logrocket") external captureExceptionWithData: (Js.Exn.t, captureData<'a, 'b>) => unit = "captureException"
@module("logrocket") external captureMessageWithData: (string, captureData<'a, 'b>) => unit = "captureMessage"
@module("logrocket") external track: (string) => unit = "track"
@module("logrocket") external version: string = "version"
