//
// ContentView.swift
// SimpleToDo
//

import Foundation

/// One item in our to do list.
struct ToDoItem: Codable, Identifiable, Hashable {
    enum Priority: String, Codable, CaseIterable {
        case low = "Low"
        case medium = "Medium"
        case high = "High"
    }

    var id = UUID()
    var title = "New Item"
    var priority = Priority.medium
    var isComplete = false

    var icon: String {
        if isComplete {
            return "checkmark.square"
        } else {
            switch priority {
            case .low:
                return "arrow.down.square"
            case .medium:
                return "square"
            default:
                return "exclamationmark.square"
            }
        }
    }

    var accessibilityValue: String {
        if isComplete {
            return "completed"
        } else {
            switch priority {
            case .low:
                return "low priority"
            case .medium:
                return ""
            case .high:
                return "high priority"
            }
        }
    }
}

// ✅ Preview / CI 用のダミーデータ
extension ToDoItem {
    static let example = ToDoItem(
        title: "Example ToDo",
        priority: .medium,
        isComplete: false
    )
}
