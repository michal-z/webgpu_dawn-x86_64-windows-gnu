const std = @import("std");

pub fn build(b: *std.Build) void {
    b.installArtifact(b.addStaticLibrary(.{
        .name = "dawn",
        .root_source_file = .{ .path = "dawn.lib" },
        .target = .{ .cpu_arch = .x86_64, .os_tag = .windows, .abi = .gnu },
        .optimize = .ReleaseFast,
    }));
}
