'use client'

import { type DialogProps } from '@radix-ui/react-dialog'
import { MinimalisticMagnifierIcon } from '@solar-icons/react/dynamic/minimalistic-magnifier'
import { Command as CommandPrimitive } from 'cmdk'
import * as React from 'react'

import { Dialog, DialogContent } from '@/components/ui/dialog'
import { cn } from '@/lib/utils'

const Command = React.forwardRef<
    React.ElementRef<typeof CommandPrimitive>,
    React.ComponentPropsWithoutRef<typeof CommandPrimitive>
>(({ className, ...props }, ref) => (
    <CommandPrimitive
        ref={ref}
        data-slot="command"
        className={cn(
            `flex size-full flex-col overflow-hidden rounded-md bg-popover text-popover-foreground`,
            className
        )}
        {...props}
    />
))
Command.displayName = CommandPrimitive.displayName

const CommandDialog = ({ children, ...props }: DialogProps) => {
    return (
        <Dialog {...props}>
            <DialogContent className="overflow-hidden p-0">
                <Command
                    className={`
                      [&_[cmdk-group]:not([hidden])_~[cmdk-group]]:pt-0
                      [&_[cmdk-input-wrapper]_svg]:size-5
                      [&_[cmdk-item]_svg]:size-5
                      **:[[cmdk-group-heading]]:px-2 **:[[cmdk-group-heading]]:font-medium
                      **:[[cmdk-group-heading]]:text-muted-foreground
                      **:[[cmdk-group]]:px-2
                      **:[[cmdk-input]]:h-12
                      **:[[cmdk-item]]:px-2 **:[[cmdk-item]]:py-3
                    `}>
                    {children}
                </Command>
            </DialogContent>
        </Dialog>
    )
}

const CommandInput = React.forwardRef<
    React.ElementRef<typeof CommandPrimitive.Input>,
    React.ComponentPropsWithoutRef<typeof CommandPrimitive.Input>
>(({ className, ...props }, ref) => (
    <div
        data-slot="command-input-wrapper"
        className="flex items-center border-b px-3"
        cmdk-input-wrapper="">
        <MinimalisticMagnifierIcon className="mr-2 size-4 shrink-0 opacity-50" />
        <CommandPrimitive.Input
            ref={ref}
            data-slot="command-input"
            className={cn(
                `
                  flex h-10 w-full rounded-md bg-transparent py-3 text-sm outline-hidden
                  placeholder:text-muted-foreground
                  disabled:cursor-not-allowed disabled:opacity-50
                `,
                className
            )}
            {...props}
        />
    </div>
))

CommandInput.displayName = CommandPrimitive.Input.displayName

const CommandList = React.forwardRef<
    React.ElementRef<typeof CommandPrimitive.List>,
    React.ComponentPropsWithoutRef<typeof CommandPrimitive.List>
>(({ className, ...props }, ref) => (
    <CommandPrimitive.List
        ref={ref}
        data-slot="command-list"
        className={cn('max-h-[300px] overflow-x-hidden overflow-y-auto', className)}
        {...props}
    />
))

CommandList.displayName = CommandPrimitive.List.displayName

const CommandEmpty = React.forwardRef<
    React.ElementRef<typeof CommandPrimitive.Empty>,
    React.ComponentPropsWithoutRef<typeof CommandPrimitive.Empty>
>((props, ref) => (
    <CommandPrimitive.Empty
        ref={ref}
        data-slot="command-empty"
        className="py-6 text-center text-sm"
        {...props}
    />
))

CommandEmpty.displayName = CommandPrimitive.Empty.displayName

const CommandGroup = React.forwardRef<
    React.ElementRef<typeof CommandPrimitive.Group>,
    React.ComponentPropsWithoutRef<typeof CommandPrimitive.Group>
>(({ className, ...props }, ref) => (
    <CommandPrimitive.Group
        ref={ref}
        data-slot="command-group"
        className={cn(
            `
              overflow-hidden p-1 text-foreground
              **:[[cmdk-group-heading]]:px-2 **:[[cmdk-group-heading]]:py-1.5
              **:[[cmdk-group-heading]]:text-xs **:[[cmdk-group-heading]]:font-medium
              **:[[cmdk-group-heading]]:text-muted-foreground
            `,
            className
        )}
        {...props}
    />
))

CommandGroup.displayName = CommandPrimitive.Group.displayName

const CommandSeparator = React.forwardRef<
    React.ElementRef<typeof CommandPrimitive.Separator>,
    React.ComponentPropsWithoutRef<typeof CommandPrimitive.Separator>
>(({ className, ...props }, ref) => (
    <CommandPrimitive.Separator
        ref={ref}
        data-slot="command-separator"
        className={cn('-mx-1 h-px bg-border', className)}
        {...props}
    />
))
CommandSeparator.displayName = CommandPrimitive.Separator.displayName

const CommandItem = React.forwardRef<
    React.ElementRef<typeof CommandPrimitive.Item>,
    React.ComponentPropsWithoutRef<typeof CommandPrimitive.Item>
>(({ className, ...props }, ref) => (
    <CommandPrimitive.Item
        ref={ref}
        data-slot="command-item"
        className={cn(
            `
              relative flex cursor-default items-center gap-2 rounded-sm px-2 py-1.5 text-sm
              outline-hidden select-none
              data-[disabled=true]:pointer-events-none data-[disabled=true]:opacity-50
              data-[selected=true]:bg-accent data-[selected=true]:text-accent-foreground
              [&_svg]:pointer-events-none [&_svg]:size-4 [&_svg]:shrink-0
            `,
            className
        )}
        {...props}
    />
))

CommandItem.displayName = CommandPrimitive.Item.displayName

const CommandShortcut = ({ className, ...props }: React.HTMLAttributes<HTMLSpanElement>) => {
    return (
        <span
            data-slot="command-shortcut"
            className={cn(`ml-auto text-xs tracking-widest text-muted-foreground`, className)}
            {...props}
        />
    )
}
CommandShortcut.displayName = 'CommandShortcut'

export {
    Command,
    CommandDialog,
    CommandEmpty,
    CommandGroup,
    CommandInput,
    CommandItem,
    CommandList,
    CommandSeparator,
    CommandShortcut,
}
