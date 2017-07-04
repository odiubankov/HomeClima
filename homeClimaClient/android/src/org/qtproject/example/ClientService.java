package org.qtproject.example;

import android.content.Context;
import android.content.Intent;
import org.qtproject.qt5.android.bindings.QtService;

public class ClientService extends QtService {
    public static void startClientService(Context ctx) {
            ctx.startService(new Intent(ctx, ClientService.class));
        }
}
