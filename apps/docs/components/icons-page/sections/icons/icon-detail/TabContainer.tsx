

export const TabContainer = ({ children }: { children: React.ReactNode }) => (
    <div className="p-2 flex flex-col gap-2 w-full rounded-lg bg-default-100 h-full min-h-48 text-left">
        {children}
    </div>
)