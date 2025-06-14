// Code generated by counterfeiter. DO NOT EDIT.
package loggerfakes

import (
	"context"
	"heimdall/internal/logger"
	"sync"
)

type FakeLogger struct {
	DebugStub        func(context.Context, string, ...any)
	debugMutex       sync.RWMutex
	debugArgsForCall []struct {
		arg1 context.Context
		arg2 string
		arg3 []any
	}
	ErrorStub        func(context.Context, string, ...any)
	errorMutex       sync.RWMutex
	errorArgsForCall []struct {
		arg1 context.Context
		arg2 string
		arg3 []any
	}
	InfoStub        func(context.Context, string, ...any)
	infoMutex       sync.RWMutex
	infoArgsForCall []struct {
		arg1 context.Context
		arg2 string
		arg3 []any
	}
	WarnStub        func(context.Context, string, ...any)
	warnMutex       sync.RWMutex
	warnArgsForCall []struct {
		arg1 context.Context
		arg2 string
		arg3 []any
	}
	WithStub        func(...any) logger.Logger
	withMutex       sync.RWMutex
	withArgsForCall []struct {
		arg1 []any
	}
	withReturns struct {
		result1 logger.Logger
	}
	withReturnsOnCall map[int]struct {
		result1 logger.Logger
	}
	WithGroupStub        func(string) logger.Logger
	withGroupMutex       sync.RWMutex
	withGroupArgsForCall []struct {
		arg1 string
	}
	withGroupReturns struct {
		result1 logger.Logger
	}
	withGroupReturnsOnCall map[int]struct {
		result1 logger.Logger
	}
	invocations      map[string][][]interface{}
	invocationsMutex sync.RWMutex
}

func (fake *FakeLogger) Debug(arg1 context.Context, arg2 string, arg3 ...any) {
	fake.debugMutex.Lock()
	fake.debugArgsForCall = append(fake.debugArgsForCall, struct {
		arg1 context.Context
		arg2 string
		arg3 []any
	}{arg1, arg2, arg3})
	stub := fake.DebugStub
	fake.recordInvocation("Debug", []interface{}{arg1, arg2, arg3})
	fake.debugMutex.Unlock()
	if stub != nil {
		fake.DebugStub(arg1, arg2, arg3...)
	}
}

func (fake *FakeLogger) DebugCallCount() int {
	fake.debugMutex.RLock()
	defer fake.debugMutex.RUnlock()
	return len(fake.debugArgsForCall)
}

func (fake *FakeLogger) DebugCalls(stub func(context.Context, string, ...any)) {
	fake.debugMutex.Lock()
	defer fake.debugMutex.Unlock()
	fake.DebugStub = stub
}

func (fake *FakeLogger) DebugArgsForCall(i int) (context.Context, string, []any) {
	fake.debugMutex.RLock()
	defer fake.debugMutex.RUnlock()
	argsForCall := fake.debugArgsForCall[i]
	return argsForCall.arg1, argsForCall.arg2, argsForCall.arg3
}

func (fake *FakeLogger) Error(arg1 context.Context, arg2 string, arg3 ...any) {
	fake.errorMutex.Lock()
	fake.errorArgsForCall = append(fake.errorArgsForCall, struct {
		arg1 context.Context
		arg2 string
		arg3 []any
	}{arg1, arg2, arg3})
	stub := fake.ErrorStub
	fake.recordInvocation("Error", []interface{}{arg1, arg2, arg3})
	fake.errorMutex.Unlock()
	if stub != nil {
		fake.ErrorStub(arg1, arg2, arg3...)
	}
}

func (fake *FakeLogger) ErrorCallCount() int {
	fake.errorMutex.RLock()
	defer fake.errorMutex.RUnlock()
	return len(fake.errorArgsForCall)
}

func (fake *FakeLogger) ErrorCalls(stub func(context.Context, string, ...any)) {
	fake.errorMutex.Lock()
	defer fake.errorMutex.Unlock()
	fake.ErrorStub = stub
}

func (fake *FakeLogger) ErrorArgsForCall(i int) (context.Context, string, []any) {
	fake.errorMutex.RLock()
	defer fake.errorMutex.RUnlock()
	argsForCall := fake.errorArgsForCall[i]
	return argsForCall.arg1, argsForCall.arg2, argsForCall.arg3
}

func (fake *FakeLogger) Info(arg1 context.Context, arg2 string, arg3 ...any) {
	fake.infoMutex.Lock()
	fake.infoArgsForCall = append(fake.infoArgsForCall, struct {
		arg1 context.Context
		arg2 string
		arg3 []any
	}{arg1, arg2, arg3})
	stub := fake.InfoStub
	fake.recordInvocation("Info", []interface{}{arg1, arg2, arg3})
	fake.infoMutex.Unlock()
	if stub != nil {
		fake.InfoStub(arg1, arg2, arg3...)
	}
}

func (fake *FakeLogger) InfoCallCount() int {
	fake.infoMutex.RLock()
	defer fake.infoMutex.RUnlock()
	return len(fake.infoArgsForCall)
}

func (fake *FakeLogger) InfoCalls(stub func(context.Context, string, ...any)) {
	fake.infoMutex.Lock()
	defer fake.infoMutex.Unlock()
	fake.InfoStub = stub
}

func (fake *FakeLogger) InfoArgsForCall(i int) (context.Context, string, []any) {
	fake.infoMutex.RLock()
	defer fake.infoMutex.RUnlock()
	argsForCall := fake.infoArgsForCall[i]
	return argsForCall.arg1, argsForCall.arg2, argsForCall.arg3
}

func (fake *FakeLogger) Warn(arg1 context.Context, arg2 string, arg3 ...any) {
	fake.warnMutex.Lock()
	fake.warnArgsForCall = append(fake.warnArgsForCall, struct {
		arg1 context.Context
		arg2 string
		arg3 []any
	}{arg1, arg2, arg3})
	stub := fake.WarnStub
	fake.recordInvocation("Warn", []interface{}{arg1, arg2, arg3})
	fake.warnMutex.Unlock()
	if stub != nil {
		fake.WarnStub(arg1, arg2, arg3...)
	}
}

func (fake *FakeLogger) WarnCallCount() int {
	fake.warnMutex.RLock()
	defer fake.warnMutex.RUnlock()
	return len(fake.warnArgsForCall)
}

func (fake *FakeLogger) WarnCalls(stub func(context.Context, string, ...any)) {
	fake.warnMutex.Lock()
	defer fake.warnMutex.Unlock()
	fake.WarnStub = stub
}

func (fake *FakeLogger) WarnArgsForCall(i int) (context.Context, string, []any) {
	fake.warnMutex.RLock()
	defer fake.warnMutex.RUnlock()
	argsForCall := fake.warnArgsForCall[i]
	return argsForCall.arg1, argsForCall.arg2, argsForCall.arg3
}

func (fake *FakeLogger) With(arg1 ...any) logger.Logger {
	fake.withMutex.Lock()
	ret, specificReturn := fake.withReturnsOnCall[len(fake.withArgsForCall)]
	fake.withArgsForCall = append(fake.withArgsForCall, struct {
		arg1 []any
	}{arg1})
	stub := fake.WithStub
	fakeReturns := fake.withReturns
	fake.recordInvocation("With", []interface{}{arg1})
	fake.withMutex.Unlock()
	if stub != nil {
		return stub(arg1...)
	}
	if specificReturn {
		return ret.result1
	}
	return fakeReturns.result1
}

func (fake *FakeLogger) WithCallCount() int {
	fake.withMutex.RLock()
	defer fake.withMutex.RUnlock()
	return len(fake.withArgsForCall)
}

func (fake *FakeLogger) WithCalls(stub func(...any) logger.Logger) {
	fake.withMutex.Lock()
	defer fake.withMutex.Unlock()
	fake.WithStub = stub
}

func (fake *FakeLogger) WithArgsForCall(i int) []any {
	fake.withMutex.RLock()
	defer fake.withMutex.RUnlock()
	argsForCall := fake.withArgsForCall[i]
	return argsForCall.arg1
}

func (fake *FakeLogger) WithReturns(result1 logger.Logger) {
	fake.withMutex.Lock()
	defer fake.withMutex.Unlock()
	fake.WithStub = nil
	fake.withReturns = struct {
		result1 logger.Logger
	}{result1}
}

func (fake *FakeLogger) WithReturnsOnCall(i int, result1 logger.Logger) {
	fake.withMutex.Lock()
	defer fake.withMutex.Unlock()
	fake.WithStub = nil
	if fake.withReturnsOnCall == nil {
		fake.withReturnsOnCall = make(map[int]struct {
			result1 logger.Logger
		})
	}
	fake.withReturnsOnCall[i] = struct {
		result1 logger.Logger
	}{result1}
}

func (fake *FakeLogger) WithGroup(arg1 string) logger.Logger {
	fake.withGroupMutex.Lock()
	ret, specificReturn := fake.withGroupReturnsOnCall[len(fake.withGroupArgsForCall)]
	fake.withGroupArgsForCall = append(fake.withGroupArgsForCall, struct {
		arg1 string
	}{arg1})
	stub := fake.WithGroupStub
	fakeReturns := fake.withGroupReturns
	fake.recordInvocation("WithGroup", []interface{}{arg1})
	fake.withGroupMutex.Unlock()
	if stub != nil {
		return stub(arg1)
	}
	if specificReturn {
		return ret.result1
	}
	return fakeReturns.result1
}

func (fake *FakeLogger) WithGroupCallCount() int {
	fake.withGroupMutex.RLock()
	defer fake.withGroupMutex.RUnlock()
	return len(fake.withGroupArgsForCall)
}

func (fake *FakeLogger) WithGroupCalls(stub func(string) logger.Logger) {
	fake.withGroupMutex.Lock()
	defer fake.withGroupMutex.Unlock()
	fake.WithGroupStub = stub
}

func (fake *FakeLogger) WithGroupArgsForCall(i int) string {
	fake.withGroupMutex.RLock()
	defer fake.withGroupMutex.RUnlock()
	argsForCall := fake.withGroupArgsForCall[i]
	return argsForCall.arg1
}

func (fake *FakeLogger) WithGroupReturns(result1 logger.Logger) {
	fake.withGroupMutex.Lock()
	defer fake.withGroupMutex.Unlock()
	fake.WithGroupStub = nil
	fake.withGroupReturns = struct {
		result1 logger.Logger
	}{result1}
}

func (fake *FakeLogger) WithGroupReturnsOnCall(i int, result1 logger.Logger) {
	fake.withGroupMutex.Lock()
	defer fake.withGroupMutex.Unlock()
	fake.WithGroupStub = nil
	if fake.withGroupReturnsOnCall == nil {
		fake.withGroupReturnsOnCall = make(map[int]struct {
			result1 logger.Logger
		})
	}
	fake.withGroupReturnsOnCall[i] = struct {
		result1 logger.Logger
	}{result1}
}

func (fake *FakeLogger) Invocations() map[string][][]interface{} {
	fake.invocationsMutex.RLock()
	defer fake.invocationsMutex.RUnlock()
	fake.debugMutex.RLock()
	defer fake.debugMutex.RUnlock()
	fake.errorMutex.RLock()
	defer fake.errorMutex.RUnlock()
	fake.infoMutex.RLock()
	defer fake.infoMutex.RUnlock()
	fake.warnMutex.RLock()
	defer fake.warnMutex.RUnlock()
	fake.withMutex.RLock()
	defer fake.withMutex.RUnlock()
	fake.withGroupMutex.RLock()
	defer fake.withGroupMutex.RUnlock()
	copiedInvocations := map[string][][]interface{}{}
	for key, value := range fake.invocations {
		copiedInvocations[key] = value
	}
	return copiedInvocations
}

func (fake *FakeLogger) recordInvocation(key string, args []interface{}) {
	fake.invocationsMutex.Lock()
	defer fake.invocationsMutex.Unlock()
	if fake.invocations == nil {
		fake.invocations = map[string][][]interface{}{}
	}
	if fake.invocations[key] == nil {
		fake.invocations[key] = [][]interface{}{}
	}
	fake.invocations[key] = append(fake.invocations[key], args)
}

var _ logger.Logger = new(FakeLogger)
