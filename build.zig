const std = @import("std");

pub fn build(b: *std.Build) void {
    const lib = b.addStaticLibrary(.{
        .name = "dawn",
        .target = .{ .cpu = .x86_64, .os = .windows, .abi = .gnu },
        .optimize = .ReleaseFast,
    });
    lib.linkSystemLibraryName("dawn");
}
