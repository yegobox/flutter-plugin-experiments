use anyhow::Result;
use notify_rust::Notification;

#[allow(non_snake_case)]
pub fn sendNotification(summary: String, body: String, icon: String) -> Result<()> {
    let mut notification = Notification::new();

    notification
        .summary(&summary)
        .body(&body)
        .appname("flipper")
        .icon(&icon);

    match notification.show() {
        Ok(_) => println!("Notification shown successfully"),
        Err(err) => {
            eprintln!("Failed to show notification: {}", err);
            return Err(err.into());
        }
    }

    Ok(())
}

// implement test to the above
// https://matejknopp.com/post/flutter_plugin_in_rust_with_no_prebuilt_binaries/
// https://github.com/flutter/flutter/issues/112677
// https://blog.logrocket.com/using-flutter-rust-bridge-cross-platform-development/
