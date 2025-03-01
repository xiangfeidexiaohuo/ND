//
// Copyright (c) Nightwind 2025
//

internal enum PowerAction: Identifiable {
	case respring, safeMode, userspaceReboot, reboot, shutdown

	var id: Self { self }

	var title: String {
		switch self {
		case .respring: return "注销设备"
		case .safeMode: return "安全模式"
		case .userspaceReboot: return "用户空间"
		case .reboot: return "重启设备"
		case .shutdown: return "设备关机"
		}
	}

	var message: String {
		switch self {
		case .respring: return "确定要注销设备吗？"
		case .safeMode: return "确定要进入安全模式吗？"
		case .userspaceReboot: return "确定要重启用户空间吗？"
		case .reboot: return "确定要重启设备吗？"
		case .shutdown: return "确定要关机吗"
		}
	}
}
