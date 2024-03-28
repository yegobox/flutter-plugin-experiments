use anyhow::Result;
use notify_rust::Notification;

#[allow(non_snake_case)]
pub fn sendNotification(summary: String, body: String, icon: String) -> Result<()> {
    let mut notification = Notification::new();

    notification.summary(&summary).body(&body).icon(&icon);

    match notification.show() {
        Ok(_) => println!("Notification shown successfully"),
        Err(err) => {
            eprintln!("Failed to show notification: {}", err);
            return Err(err.into());
        }
    }

    Ok(())
}

// fn main() -> Result<(), Box<dyn std::error::Error>> {
//     send_notification("Firefox News", "This will almost look like a real Firefox notification.", "firefox")?;
//     Ok(())
// }
// #[allow(non_snake_case)]
// pub fn helloWorld() -> String {
//     String::from("Hello from Rust! 🦀")
// }
