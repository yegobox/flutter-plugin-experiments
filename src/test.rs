#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_send_notification_success() {
        let summary = "Test summary".to_string();
        let body = "Test body".to_string();
        let icon = "icon.png".to_string();

        let result = sendNotification(summary, body, icon);

        assert!(result.is_ok());
    }

    #[test]
    fn test_send_notification_error() {
        let summary = "Test summary".to_string();
        let body = "Test body".to_string();
        let icon = "invalid.png".to_string();

        let result = sendNotification(summary, body, icon);

        assert!(result.is_err());
    }
}
