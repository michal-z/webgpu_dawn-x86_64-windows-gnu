const std = @import("std");

pub fn build(b: *std.Build) void {
    const lib = b.addStaticLibrary(.{
        .name = "dawn",
        .root_source_file = .{ .path = "dawn.lib" },
        .target = .{ .cpu_arch = .x86_64, .os_tag = .windows, .abi = .gnu },
        .optimize = .ReleaseFast,
    });
    b.installArtifact(lib);

    //for (b.install_tls.step.dependencies.items) |dep_step| {
    //    const inst = dep_step.cast(std.Build.Step.InstallArtifact) orelse continue;
    //    std.debug.print("{s}\n", .{inst.artifact.name});
    //}
}
